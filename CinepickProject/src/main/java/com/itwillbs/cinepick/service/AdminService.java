package com.itwillbs.cinepick.service;

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

}
