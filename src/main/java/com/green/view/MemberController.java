package com.green.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	

	@GetMapping(value="/login")
	public String login() {
		
		return "member/login";
	}
	
	@GetMapping(value="/contract")
	public String contractView() {
		
		return "member/contract";
	}
	
	@PostMapping(value="/join_form")
	public String joinView() {
		
		return "member/join";
	}
	
}











