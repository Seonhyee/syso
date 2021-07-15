package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		
		return "/member/joinForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "/member/loginForm";
	}
	
	@RequestMapping(value = "/find_Info", method = RequestMethod.GET)
	public String find_Info() {
		
		return "/member/find_Info";
	}
	
	@RequestMapping(value = "/member/update", method = RequestMethod.GET)
	public String update() {
		
		return "/member/updateForm";
	}
	
	@RequestMapping(value = "/member/updatePro", method = RequestMethod.GET)
	public String updatePro() {
		
		return "/member/updatePro";
	}
	
	@RequestMapping(value = "/member/deletePro", method = RequestMethod.GET)
	public String deletePro() {
		
		return "/member/deletePro";
	}
	
	
	
	
	
}
