package com.kh.mini.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.mini.dao.UsersDao;
import com.kh.mini.dto.UsersDto;
import com.kh.mini.mapper.AttachmentMapper;
import com.kh.mini.mapper.UsersMapper;

@Controller
@RequestMapping("/users")
public class UsersController {

	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private UsersMapper usersMapper;
	
	@Autowired
	private AttachmentMapper attachmentMapper;
	
	@GetMapping("/join")
	public String join() {
		return "/WEB-INF/views/users/join.jsp";
	}

	//프로필 x
	@PostMapping("/join")
	public String join(@ModelAttribute UsersDto usersDto) {
		usersDao.insert(usersDto);
		return "redirect:joinFinish";
	}
	
	@GetMapping("/joinFinish")
	public String joinFiinish() {
		return "/WEB-INF/views/users/join-Finish.jsp";
	}
	

}
