package com.green.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.dto.MemberVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.product.ProductService;
import com.green.biz.product.ReviewService;


@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private ReviewService reviewService;
	
	//@RequestMapping(value="/product_detail", method=RequestMethod.GET)
	@GetMapping(value="/product-detail")
	public String productDetailAction(ProductVO vo, Model model, ReviewVO rv) {

		// 제품 상세 조회
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		
		List<ReviewVO> reviewList = reviewService.listReview(rv);
		 
		model.addAttribute("reviewList", reviewList);
		
		
		return "product/product-detail";
	}
	
	/* 리뷰작성 */
	@RequestMapping(value="/post_review_save", method={RequestMethod.GET, RequestMethod.POST})
	public String insertReview(@RequestParam("bseq") int bseq ,ProductVO vo, ReviewVO rv, Model model,
								HttpSession session, HttpServletRequest request) {
		
		// (1) 세션에 저장된 사용자 정보를 읽어 온다.
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		// (2) 로그인이 안되어 있으면 로그인, 
		//		로그인 되어 있으면, 리뷰목록에 리뷰 저장
		if (loginUser == null) {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");
			
			return "member/login";
			
		}else {
			rv.setId(loginUser.getId());
		}
			reviewService.insertReview(rv);

			// (3) 리뷰 목록 조회하여 화면 표시
			return "redirect:"+request.getHeader("Referer");
 	}
	
	
	// 리뷰 삭제
	@PostMapping(value="/review_delete")
	public String reviewDelete(@RequestParam(value="rseq") int[] rseq, HttpServletRequest request, 
								ReviewVO rv, Model model, HttpSession session) {
		
		// (1) 세션에 저장된 사용자 정보를 읽어 온다.
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		// (2) 로그인이 안되어 있으면 로그인, 
		//		로그인 되어 있으면, 리뷰목록에서 리뷰 삭제
		if (loginUser == null) {
			model.addAttribute("msg", "로그인이 필요한 서비스입니다.");
			
			return "member/login";
			
		}else {
			rv.setId(loginUser.getId());
			
		}
		for(int i=0; i<rseq.length; i++) {
			System.out.println(("삭제할 review rseq = ") + rseq[i]);
			reviewService.deleteReview(rseq[i]);
		}
		
		return "redirect:"+request.getHeader("Referer");
	}
	
}

	
	

