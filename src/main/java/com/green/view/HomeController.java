package com.green.view;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.biz.dto.ProductVO;
import com.green.biz.product.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {
		
		// 베스트 상품 조회 서비스 호출
		List<ProductVO> bestProdList = productService.getBestProductList();	
		model.addAttribute("BestProductList", bestProdList);
				
		// 신상품 조회 서비스 호출
		List<ProductVO> newProdList =  productService.getNewProductList();				
		model.addAttribute("NewProductList", newProdList);
		
		// 무료 도서 조회 서비스 호출
		List<ProductVO> freeProdList = productService.getFreeProductList();			
		model.addAttribute("FreeProductList", freeProdList);
				
		return "index";
	}
	
}
