package com.newlecture.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.newlecture.webapp.entity.Member;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {

		return "member.login";
	}
	

}