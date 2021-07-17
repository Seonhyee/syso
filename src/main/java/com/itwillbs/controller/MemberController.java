package com.itwillbs.controller;


import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberVO;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController  {
	
	@Inject
	private MemberService service;
	
	@RequestMapping(value = "/joinPro", method = RequestMethod.POST)
	public String join(@ModelAttribute("vo") MemberVO vo) {
			System.out.println("joinPro 왔음");
			
		System.out.println(vo.getMember_id());
		System.out.println(vo.getMember_name());
		
		 service.memberJoinProcess(vo);
			
		return "redirect:certification";
	}
	
	@RequestMapping(value = "/certification", method = RequestMethod.GET)
	public String cert(){
		System.out.println("MainController /join");
				
		return "./member/certification";
	}
	@RequestMapping(value="/joinconfirm", method=RequestMethod.GET)
	public String emailConfirm(@ModelAttribute("uVO") MemberVO vo, Model model) throws Exception {
		System.out.println(vo.getMember_email() + ": auth confirmed");
		vo.setMember_authStatus(1);	// authstatus를 1로,, 권한 업데이트
		service.updateAuthstatus(vo);
		
		model.addAttribute("name", vo.getMember_name());
		
		return "./member/joinconfirm";
	}
	
	
	
	
	
}