package com.newlecture.webapp.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.newlecture.webapp.dao.NoticeDao;
import com.newlecture.webapp.entity.NoticeView;

@Controller
@RequestMapping("/customer/*")
public class CustomerController {
		
	@Autowired
	private SqlSessionTemplate sqlSession;

	@RequestMapping("notice")
	public String notice(
			@RequestParam(value="p", defaultValue="1")  Integer page,
			@RequestParam(value="f", defaultValue="title")  String field,
			@RequestParam(value="q", defaultValue="") String query,
			Model model) 
	{
		NoticeDao notieDao = sqlSession.getMapper(NoticeDao.class);		
		List<NoticeView> list = notieDao.getList(page, field, query);
		
		model.addAttribute("list", list);
		
		//String output = String.format("p:%s, q:%s", page, query);
		//output += String.format("title : %s\n", list.get(0).getTitle());
		
		return "customer/notice";
	}
	

	@RequestMapping("notice/{id}")	
	public String noticeDetail(
				@PathVariable("id") String aaid,
				Model model) {
		
		NoticeDao noticeDao = sqlSession.getMapper(NoticeDao.class);		
		NoticeView noticeView = noticeDao.get(aaid);
		
		model.addAttribute("n", noticeView);
		
		return "customer/notice-detail";
	}

}