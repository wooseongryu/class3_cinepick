package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.AdminMapper;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;

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

	public List<QnaCateVO> getCategory() {
		System.out.println("AdminService - getCategory()");
		return mapper.selectCategory();
	}

	public int insertQna(QnaVO qna) {
		System.out.println("AdminService - insertQna()");
		return mapper.insertQna(qna);
	}

	public List<QnaVO> getQnaList() {
		System.out.println("AdminService - getQnaList()");
		return mapper.selectQna();
	}

	public int deleteNotice(int noticeIdx) {
		System.out.println("AdminService - deleteNotice()");
		return mapper.deleteNotice(noticeIdx);
	}

}
