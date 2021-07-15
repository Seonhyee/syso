package com.itwillbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@RequestMapping(value = "/member/kakao_login", method = RequestMethod.GET)
	public String kakao_login(HttpServletRequest request) {
		
		String code;
		if(request.getParameter("code") != null) {
			
		try {
			code = request.getParameter("code");
			System.out.println("code : " + code);
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			System.out.println("NULL error 발생!" + e.getMessage());
		}
		}

		return "/member/kakao_login";
	}
	
}
