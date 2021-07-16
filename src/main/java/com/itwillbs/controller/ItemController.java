package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ItemController {

	@RequestMapping(value = "/item/insert", method = RequestMethod.GET)
	public String insert() {
		
		return "/item/insertForm";
	}
	
	@RequestMapping(value = "/item/insertPro", method = RequestMethod.POST)
	public String insertPro() {

		return "insertPro";
	}
	
	@RequestMapping(value = "/item/update", method = RequestMethod.GET)
	public String update() {

		return "updateForm";
	}
	
	@RequestMapping(value = "/item/updatePro", method = RequestMethod.POST)
	public String updatePro() {

		return "updatePro";
	}
	
	@RequestMapping(value = "/item/deletePro", method = RequestMethod.POST)
	public String deletePro() {

		return "deletePro";
	}
	
	@RequestMapping(value = "/item/manage", method = RequestMethod.GET)
	public String manage() {
		

		return "manage";
	}
	
	@RequestMapping(value = "/item/orders", method = RequestMethod.GET)
	public String orders() {

		return "insertForm";
	}
	
	@RequestMapping(value = "/item/sales", method = RequestMethod.GET)
	public String sales() {

		return "insertForm";
	}
	
	@RequestMapping(value = "/item/detail", method = RequestMethod.GET)
	public String detail() {

		return "/item/item_detail";
	}
	
	
	
	
}
