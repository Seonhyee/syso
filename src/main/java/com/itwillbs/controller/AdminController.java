package com.itwillbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class AdminController {

	
	// /category 주소가 들어오면 // /category 주소가 들어오면 info.jsp 이동   GET
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(HttpServletRequest request, Model model) {
		System.out.println("AdminController");
		int category_idx = Integer.parseInt(request.getParameter("category_idx"));
		System.out.println(category_idx);
		
		
		
		return "category";
	}
	
	// 멤버변수 정의 
    // MemberService memberService=new MemberServiceImpl();
//	private MemberService memberService;
//	@Inject
//	public void setMemberService(MemberService memberService) {
//		this.memberService = memberService;
//	}
	
	
//	@RequestMapping(value = "/category", method = RequestMethod.GET)
//	public String category() {
//		return "insertForm";
//	}
//	
//
//	// /insertPro POST방식
//	// 회원가입처리하고  /login이동
//	@RequestMapping(value = "/insertPro", method = RequestMethod.POST)
//	public String insertPro(MemberBean mb) {
//		System.out.println("MemberController /insertPro");
//		System.out.println(mb.getId());
//		System.out.println(mb.getPass());
//		System.out.println(mb.getName());
//			memberService.insertMember(mb);
//		
//		return "redirect:/login";
//	}
	
}
