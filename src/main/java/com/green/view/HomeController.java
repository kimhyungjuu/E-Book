package com.green.view;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.biz.product.ProductService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private ProductService productService;
	
	/**
	 * index.html에서 메인화면 표시를 위한 index URL 요청 처리
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {

		return "index";
	}
	
}
