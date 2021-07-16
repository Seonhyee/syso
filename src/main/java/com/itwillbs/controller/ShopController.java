package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {

	@RequestMapping(value = "/shop/item", method = RequestMethod.GET)
	public String item() {
		
		return "/product/my_products";
	}
	
	
	
	
}
