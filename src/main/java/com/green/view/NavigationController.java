package com.green.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.green.biz.dto.ProductVO;
import com.green.biz.product.ProductService;


@Controller
public class NavigationController {
	
	@Autowired
	private ProductService productService;
	
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
}
