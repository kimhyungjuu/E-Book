package com.green.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.green.biz.order.CartService;
import com.green.biz.order.OrderService;

@Controller
public class MypageController {


	
	@GetMapping(value="/cart")
	public String cart() {
		
		return "mypage/cart";
	}
	
	@GetMapping(value="/wishlist")
	public String wishlist() {
		
		return "mypage/wishlist";
	}
	
	@GetMapping(value="/my-account")
	public String myaccount() {
		
		return "mypage/my-account";
	}
}
