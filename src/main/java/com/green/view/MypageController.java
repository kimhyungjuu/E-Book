package com.green.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.dto.CartVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.OrderVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.WishlistVO;
import com.green.biz.order.CartService;
import com.green.biz.order.OrderService;
import com.green.biz.product.ProductService;
import com.green.biz.wishlist.WishlistService;

@Controller
public class MypageController {

	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private WishlistService wishlistService;
	@Autowired
	private ProductService productService;
	/*
	 * 장바구니 담기 요청 처리
	 */

	@PostMapping(value = "/cart_insert")
	public String insertCart(CartVO vo, Model model, HttpSession session) {

		// (1) 세션에 저장된 사용자 정보를 읽어 온다.
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		// (2) 로그인이 안되어 있으면 로그인,
		// 로그인이 되어 있으면, 장바구니에 항목 저장
		if (loginUser == null) {
			return "member/login";
		} else {
			vo.setId(loginUser.getId());

			cartService.insertCart(vo);

			// (3) 장바구니 목록 조회하여 화면 표시
			return "redirect:cart";
		}
	}

	@GetMapping(value = "/cart")
	public String listCart(HttpSession session, Model model) {

		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "member/login";
		} else {
			List<CartVO> cartList = cartService.listCart(loginUser.getId());

			// 총액 계산
			int totalAmount = 0;
			for (CartVO vo : cartList) {
				totalAmount += vo.getPrice();
			}
			// 장바구니 목록을 내장 객체에 저장
			model.addAttribute("cartList", cartList);
			model.addAttribute("totalPrice", totalAmount);

			return "mypage/cart";
		}
	}

	/*
	 * 장바구니 항목 삭제 요청 처리
	 */
	@PostMapping(value = "/cart_delete")
	public String cartDelete(@RequestParam(value = "cseq") int[] cseq) {

		for (int i = 0; i < cseq.length; i++) {
			System.out.println(("삭제할 cart seq = " + cseq[i]));
			cartService.deleteCart(cseq[i]);
		}

		return "redirect:cart";
	}

	/*
	 * 장바구니 내역의 주문 처리
	 */
	@PostMapping(value = "/order_insert")
	public String orderInsert(OrderVO vo, HttpSession session, Model model) {

		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "member/login";
		} else {
			vo.setId(loginUser.getId());

			int oseq = orderService.insertOrder(vo);
			
			// 주문번호 전달
			model.addAttribute("oseq", oseq);

			return "redirect:mypage";
		}
	}

	/*
	 * 진행중인 주문내역 조회 입력 파라미터: oseq result = '1'
	 */
	@GetMapping(value = "/orderlist")
	public String orderList(HttpSession session, OrderVO order, Model model) {
		// (1) 로그인 확인
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "member/login";
		} else {
			// (2) 주문번호별 진행중인 주문 내역 조회
			order.setId(loginUser.getId());
			order.setResult("");
			List<OrderVO> orderList = orderService.listOrderById(order);

			// (3) 주문 총액 계산
			int totalAmount = 0;
			for (OrderVO vo : orderList) {
				totalAmount += (vo.getPrice());
			}

			// (4) 내장 객체에 결과 저장
			model.addAttribute("orderList", orderList);
			model.addAttribute("totalPrice", totalAmount);

			// (5) 화면 호출
			return "mypage/mybook";
		}
	}

	@GetMapping(value = "/mypage")
	public String myPageView(HttpSession session, Model model) {

		// 세션에 저장된 로그인 정보 읽어옴
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "member/login";
		} else {
			// 사용자가 주문한 모든 주문번호 조회
			OrderVO vo = new OrderVO();
			vo.setId(loginUser.getId());
			vo.setResult("n");
			List<Integer> oseqList = orderService.selectSeqOrdering(vo);

			// 각 주문번호를 조회하여 주문요약정보 생성
			// (1) 주문 요약 정보 저장 변수
			List<OrderVO> orderList = new ArrayList<OrderVO>();

			// (2) 모든 주문번호에 대한 요약정보 생성
			for (int oseq : oseqList) {
				OrderVO orderVO = new OrderVO();

				orderVO.setId(loginUser.getId());
				orderVO.setOseq(oseq);
				orderVO.setResult("n");

				// 각 주문에 대한 주문내역 조회
				List<OrderVO> listByOseq = orderService.listOrderById(orderVO);

				// 위에서 주문한 주문내역의 요약정보 생성
				OrderVO order = new OrderVO();
				order.setOseq(listByOseq.get(0).getOseq());
				order.setIndate(listByOseq.get(0).getIndate());

				if (listByOseq.size() > 1) {
					order.setTitle(listByOseq.get(0).getTitle() + " 외" + (listByOseq.size() - 1) + "건");
				} else {
					order.setTitle(listByOseq.get(0).getTitle());
				}

				// 주문번호별 총액 계산
				int amount = 0;
				for (int i = 0; i < listByOseq.size(); i++) {
					amount += listByOseq.get(i).getPrice();
				}
				order.setPrice(amount);

				// 요약정보를 List변수에 추가
				orderList.add(order);
			}
			model.addAttribute("title", "진행중인 주문 내역");
			model.addAttribute("orderList", orderList);
		}

		return "mypage/mypage";
	}

	@GetMapping(value = "/order_detail")
	public String orderDetail(OrderVO vo, HttpSession session, Model model) {
		// 세션객체에서 로그인 확인
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "member/login";
		} else {
			// 주문번호를 조건으로 주문 조회
			vo.setId(loginUser.getId());
			// vo.setResult("1");
			vo.setResult("");

			List<OrderVO> orderList = orderService.listOrderById(vo);

			// 화면에 출력할 정보 생성
			// (1) 주문자 정보 생성
			OrderVO orderDetail = new OrderVO();

			orderDetail.setOseq(orderList.get(0).getOseq());
			orderDetail.setIndate(orderList.get(0).getIndate());
			orderDetail.setMname(orderList.get(0).getMname());
			orderDetail.setResult(orderList.get(0).getResult());

			// 주문 합계 금액 계산
			int amount = 0;
			for (int i = 0; i < orderList.size(); i++) {
				amount += orderList.get(i).getPrice();
			}

			model.addAttribute("title", "My Page(주문 상세 정보)");
			model.addAttribute("orderDetail", orderDetail);
			model.addAttribute("totalPrice", amount);
			model.addAttribute("orderList", orderList);

			return "mypage/orderDetail";
		}
	}

	/*
	 * 총 주문내역 처리
	 */
	@GetMapping(value = "/order_all")
	public String orderAllView(HttpSession session, Model model, OrderVO vo) {
		// (1) 사용자 로그인 확인
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "member/login";
		} else {
			// (2) 사용자의 전체 주문번호 확인
			vo.setId(loginUser.getId());
			vo.setResult(""); // 처리결과 지정 안함
			List<Integer> oseqList = orderService.selectSeqOrdering(vo);

			// (3) 각 주문번호 별 주문내역 조회
			List<OrderVO> orderList = new ArrayList<>(); // 주문요약정보 저장 변수
			for (int oseq : oseqList) {
				OrderVO orderVO = new OrderVO();
				orderVO.setId(loginUser.getId());
				orderVO.setOseq(oseq);
				orderVO.setResult("");

				// 주문번호별 주문내역 조회
				List<OrderVO> orders = orderService.listOrderById(orderVO);

				// (4) 주문요약 정보 생성
				OrderVO summary = new OrderVO();
				summary = orders.get(0); // 우선 첫번째 상품내역 정보를 복사
				if (orders.size() > 1) {
					summary.setTitle(orders.get(0).getTitle() + " 외" + (orders.size() - 1 + " 건"));
				} else {
					summary.setTitle(orders.get(0).getTitle());
				}

				int amount = 0;
				for (OrderVO order : orders) {
					amount += (order.getPrice());
				}
				summary.setPrice(amount);

				orderList.add(summary);
			}

			// 결과를 화면에 전달
			model.addAttribute("title", "총 주문내역");
			model.addAttribute("orderlist", orderList);

			return "mypage/orderlist";
		}
	}

	@PostMapping(value = "/wishlist_insert")
	public String insertWishlist(WishlistVO vo, ProductVO vo2, Model model, HttpSession session) {
				System.out.println(vo.getBseq());
		// (1) 세션에 저장된 사용자 정보를 읽어 온다.
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		// (2) 로그인이 안되어 있으면 로그인,
		// 로그인이 되어 있으면, 위시리스트 저장 
		if (loginUser == null) {
			return "member/login";
		} else {
			vo2.setBseq(vo.getBseq());
			ProductVO ebook = productService.getProduct(vo2);
			System.out.println(ebook);
			vo.setId(loginUser.getId());
			
			
			wishlistService.insertWishlist(vo);

			// (3) 장바구니 목록 조회하여 화면 표시
			return "redirect:wishlist";
		}
	}

	@GetMapping(value = "/wishlist")
	public String listWishlist(HttpSession session, Model model) {
		
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			return "member/login";
		} else {
			
			
			List<WishlistVO> wishList = wishlistService.listWishlist(loginUser.getId());
			System.out.println(wishList);
			WishlistVO wishlistDetail = new WishlistVO();
			if (wishList.size() > 0) {
				
			
			wishlistDetail.setTitle(wishList.get(0).getTitle());
			wishlistDetail.setPrice(wishList.get(0).getPrice());
			
			}
			// 총액 계산
			int totalAmount = 0;
			for (WishlistVO vo : wishList) {
				totalAmount += vo.getPrice();
			}
			
			// 장바구니 목록을 내장 객체에 저장
			model.addAttribute("wishlist", wishList);
			model.addAttribute("totalPrice", totalAmount);

			return "mypage/wishlist";
		}
	}
	
	@PostMapping(value = "/wishlist_delete")
	public String wishlistDelete(@RequestParam(value = "wseq") int[] wseq) {

		for (int i = 0; i < wseq.length; i++) {
			System.out.println(("삭제할 wishlist seq = " + wseq[i]));
			wishlistService.deleteWishlist(wseq[i]);
		}

		return "redirect:wishlist";
	}
}