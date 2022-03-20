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

import com.green.biz.dto.CartVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.order.CartService;
import com.green.biz.product.ProductService;
import com.green.biz.product.ReviewService;


@Controller
public class NavigationController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;
	
	@GetMapping(value = "/best")
	   public String bestView(Model model) {
		
		// 베스트 상품 조회 서비스 호출
		List<ProductVO> bestProdList = productService.getBestProductList();
		
		model.addAttribute("BestProductList", bestProdList);
	     
	    return "navigation/best";
	   }
	
	@GetMapping(value = "/new")
	   public String newView(Model model) {
		
		// 신상품 조회 서비스 호출
		List<ProductVO> newProdList =  productService.getNewProductList();
		
		model.addAttribute("NewProductList", newProdList);
	      
	      return "navigation/new";
	   }
	
	@GetMapping(value = "/free")
	   public String freeView(Model model) {
		
		// 무료 도서 조회 서비스 호출
		List<ProductVO> freeProdList = productService.getFreeProductList();
		
		model.addAttribute("FreeProductList", freeProdList);
	      
	      return "navigation/free";
	   }
	
	@GetMapping(value = "/cs_center")
	   public String cs_centerView() {
	      
	      return "navigation/cs_center";
	   }

	@GetMapping(value="/category")
	public String productKindView(ProductVO vo, Model model) {
		
		List<ProductVO> listProduct = productService.getProductListByKind(vo);
		
		model.addAttribute("productKindList" , listProduct);
		
		return "product/productKind";
		}
	
	@PostMapping(value="/buy_account_form")
	public String buyBookAction(CartVO vo, Model model, HttpSession session) {
		
		// (1) 세션에 저장된 사용자 정보를 읽어 온다.
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		// (2) 로그인이 안되어 있으면 로그인, 
		//     로그인 되어 있으면, 장바구니에 항목 저장
		if (loginUser == null) {  
			return "member/login";
		} else {
			vo.setId(loginUser.getId());
			
			cartService.insertCart(vo);
			
		
		return "payment/buyBook";
		}	
	}
	
	@PostMapping(value="/rent_account_form")
	public String rentBookAction(CartVO vo, Model model, HttpSession session) {
		
		// (1) 세션에 저장된 사용자 정보를 읽어 온다.
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		// (2) 로그인이 안되어 있으면 로그인, 
		//     로그인 되어 있으면, 장바구니에 항목 저장
		if (loginUser == null) {  
			return "member/login";
		} else {
			vo.setId(loginUser.getId());
			
			cartService.insertCart(vo);
			
		
		return "product/rentBook";
		}	
	}
}
