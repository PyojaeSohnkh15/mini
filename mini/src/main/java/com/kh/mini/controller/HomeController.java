package com.kh.mini.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class HomeController {

	@RequestMapping("/")
	public String home() {
		
		return "/WEB-INF/views/home.jsp";
	}
}
