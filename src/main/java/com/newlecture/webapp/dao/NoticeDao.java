package com.newlecture.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.newlecture.webapp.entity.NoticeView;

public interface NoticeDao {
	List<NoticeView> getList(@Param("page") int page, String field, String query);
	int getCount();
	
	@Select("select * from NoticeView where id=#{id}") //<- mybatis 사용해서 해도됨
	NoticeView get(String id);
	int update(String id, String title, String content);
	NoticeView getPrev(String aaid);
	NoticeView getNext(String aaid);
}
