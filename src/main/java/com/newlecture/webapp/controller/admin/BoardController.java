package com.newlecture.webapp.controller.admin;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.newlecture.webapp.dao.NoticeDao;

@Controller
@RequestMapping("admin/board/*")
public class BoardController {
	
	@Autowired
	private NoticeDao noticeDao;
	
	@RequestMapping("notice")
	public String notice(
			@RequestParam(value="p", defaultValue="1")  Integer page,
			@RequestParam(value="f", defaultValue="title")  String field,
			@RequestParam(value="q", defaultValue="") String query,
			Model model) 
	{
		model.addAttribute("list", noticeDao.getList(page, field, query));
		
		return "admin.board.notice.list";
	}
	
	@RequestMapping("notice/{id}")	
	public String noticeDetail(
				@PathVariable("id") String aaid,
				Model model) 	{
		
		model.addAttribute("n", noticeDao.get(aaid));
		model.addAttribute("prev", noticeDao.getPrev(aaid));
		model.addAttribute("next", noticeDao.getNext(aaid));
		
		return "admin.board.notice.detail";
	}
	
	@RequestMapping(value="notice/reg", method=RequestMethod.GET)	
	public String noticeReg() 	{
		
		
		return "admin.board.notice.reg";
	}
	
	@RequestMapping(value="notice/reg", method=RequestMethod.POST)	
	public String noticeReg(String title, String content) throws UnsupportedEncodingException 	{
		
		//title = new String(title.getBytes("ISO-8859-1"), "UTF-8"); //바이트 수를 잘못읽어왔기 때문.. ????로 나오면 바이트수 오류 뷁잛뚫 이런식으로 나오면 인코딩오류
		System.out.println(title);
		
		return "redirect:../notice";
	}
	
}
