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
	
	/*==============================================================
	 * 공지 
	 * =============================================================
	 * */

	// 공지 등록
	public int insertNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}

	// 공지 목록 조회
	public List<NoticeVO> getNoticeList() {
		System.out.println("AdminService - getNoticeList()");
		return mapper.selectNoticeList();
	}
	
	// 공지 조회
	public NoticeVO getNotice(int noticeIdx) {
		System.out.println("AdminService - getNotice()");
		return mapper.selectNotice(noticeIdx);
	}

	// 공지 삭제
	public int deleteNotice(int noticeIdx) {
		System.out.println("AdminService - deleteNotice()");
		return mapper.deleteNotice(noticeIdx);
	}

	// 공지 수정
	public int updateNotice(NoticeVO notice) {
		System.out.println("AdminService - updateNotice()");
		return mapper.updateNotice(notice);
	}
	
	/*==============================================================
	 * 자주 묻는 질문
	 * =============================================================
	 * */

	// 자주묻는 질문 등록
	public int insertQna(QnaVO qna) {
		System.out.println("AdminService - insertQna()");
		return mapper.insertQna(qna);
	}

	// 자주묻는 질문 목록 조회
	public List<QnaVO> getQnaList() {
		System.out.println("AdminService - getQnaList()");
		return mapper.selectQnaList();
	}

	// 자주묻는 질문 조회
	public QnaVO getQna(String qnaIdx) {
		System.out.println("AdminService - getQna()");
		return mapper.selectQnaList(qnaIdx);
	}
	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	// 카테고리 등록
	public int insertCategory(String qnaCateSubject) {
		System.out.println("AdminService - insertCategory()");
		return mapper.insertCategory(qnaCateSubject);
	}

	// 카테고리 조회
	public List<QnaCateVO> getCategory() {
		System.out.println("AdminService - getCategory()");
		return mapper.selectCategory();
	}

}
