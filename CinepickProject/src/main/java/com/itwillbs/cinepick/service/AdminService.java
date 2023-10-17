package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.AdminMapper;
import com.itwillbs.cinepick.vo.NoticeVO;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper mapper;

	// 공지등록
	public int updateNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}

	public List<NoticeVO> getNoticeList() {
		System.out.println("AdminService - getNoticeList()");
		return mapper.selectNotice();
	}

	public int insertCategory(String qnaCateSubject) {
		System.out.println("AdminService - insertCategory()");
		return mapper.insertCategory(qnaCateSubject);
	}

	public List<String> getCategory() {
		System.out.println("AdminService - getCategory()");
		return mapper.selectCategory();
	}

}
