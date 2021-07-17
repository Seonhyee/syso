package com.itwillbs.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.ItemVO;
import com.itwillbs.domain.MemberVO;
import com.itwillbs.service.ItemService;
import com.itwillbs.service.MemberService;

@Controller
public class MainController {
	
	@Inject
	private ItemService service;
	

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		System.out.println("MainController /home");
		List<ItemVO> list = service.getItem();
		
		model.addAttribute("list", list);
		
		return "index";
	}
	
	@RequestMapping(value = "/infiniteScrollDown", method = RequestMethod.POST)
	public @ResponseBody List<ItemVO> infiniteScrollDownPost(@RequestBody ItemVO itemVO) {
		System.out.println("infiniteScroll");

		List<ItemVO> list = service.infiniteScrollDown(itemVO);		
		
		return list;
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(){
		System.out.println("MainController /join");
				
		return "./member/joinForm";
	}
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(){
		System.out.println("MainController /login");
				
		return "./member/loginForm";
	}
	
	
//    400 에러 	
//    (1) mapper id가 틀린 경우
//
//    (2) Parameter와 bean의 field명이  틀린 경우
//
//    (3) sql.xml에서 정의된 namespace와 DAO에서 호출하는 namespace가 다를 경우
//
//    (4) mapper가 정의가 되어 있지 않거나 Spelling이 틀린 경우
//
//    (5) mapper에 정의된 namespace 명칭이 같은 Application 내에 중복 될 경우
	
	
}
