package com.newlecture.webapp.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.newlecture.webapp.dao.NoticeDao;
import com.newlecture.webapp.entity.NoticeView;

@Controller
@RequestMapping("/customer/*")
public class CustomerController {
		
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
		
		//String output = String.format("p:%s, q:%s", page, query);
		//output += String.format("title : %s\n", list.get(0).getTitle());
		
		//return "customer/notice";
		return "customer.notice.list";
	}
	

	@RequestMapping("notice/{id}")	
	public String noticeDetail(
				@PathVariable("id") String aaid,
				Model model) 	{
		
		model.addAttribute("n", noticeDao.get(aaid));
		//model.addAttribute("prev", noticeDao.getPrev(aaid));
		//model.addAttribute("next", noticeDao.getNext(aaid));
		
		return "customer.notice.detail";
	}
	
	@RequestMapping("notice-ajax")
	@ResponseBody
	public String noticeAjax(
			@RequestParam(value="p", defaultValue="1")  Integer page,
			@RequestParam(value="f", defaultValue="title")  String field,
			@RequestParam(value="q", defaultValue="") String query,
			Model model) 
	{
		
		List<NoticeView> list = noticeDao.getList(page, field, query);
		
		String json = "";
		
		Gson gson = new Gson();
		json = gson.toJson(list);
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
/*		StringBuilder builder = new StringBuilder();
		builder.append("[");
		builder.append("{},");
		builder.append("{}");
		builder.append("]");
		
		json = builder.toString();*/
		
		return json;
	}
	
}
