package com.newlecture.webapp.dao;

import java.util.List;

import com.newlecture.webapp.entity.NoticeFile;

public interface NoticeFileDao {
	
	List<NoticeFile> getListByNoticeId(String NoticeId);
	
	int insert(NoticeFile noticeFile);
	int update(NoticeFile noticeFile);
	int delete(String id);
}
