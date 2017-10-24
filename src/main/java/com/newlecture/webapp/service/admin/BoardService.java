package com.newlecture.webapp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.newlecture.webapp.dao.MemberDao;
import com.newlecture.webapp.dao.NoticeDao;
import com.newlecture.webapp.dao.NoticeFileDao;
import com.newlecture.webapp.entity.Notice;
import com.newlecture.webapp.entity.NoticeView;

//BoardController를 위한 데이터 제공
public class BoardService {
	
	@Autowired
	private NoticeDao noticeDao;
	
	@Autowired
	private NoticeFileDao noticeFileDao;
	
	@Autowired
	private MemberDao memberDao;
	
	public List<NoticeView> getNoticeList() {
		
		return noticeDao.getList(1, "title", "");
	}
	
	public List<NoticeView> getNoticeList(String field, String query) {
		
		return null;
	}
	
	@Transactional
	public int insertAndPointUp(Notice notice) {
		
		int result = noticeDao.insert(notice);
		result += memberDao.pointUp(notice.getWriterId());
		
		return result;
	}

	public Object getNotice(String aaid) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getNoticePrev(String aaid) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getNoticeNext(String aaid) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getNextId() {
		// TODO Auto-generated method stub
		return null;
	}
}
