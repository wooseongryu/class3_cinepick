package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.AdminMapper;
import com.itwillbs.cinepick.vo.EventVO;
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
	
	// 공지 조회
	// noticeIdx를 널스트링으로 전달 시 전체 공지 조회
	public List<NoticeVO> getNotice(String noticeIdx) {
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

	// 자주묻는 질문 조회
	// qnaIdx를 널스트링으로 전달 시 전체 질문 조회
	public List<QnaVO> getQna(String qnaIdx) {
		System.out.println("AdminService - getQna()");
		return mapper.selectQna(qnaIdx);
	}
	
	// 자주묻는 질문 수정 
	public int updateQna(QnaVO qna) {
		System.out.println("AdminService - updateQna()");
		return mapper.updateQna(qna);
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

	// 카테고리 삭제
	public int deleteCategory(int qnaCateIdx) {
		System.out.println("AdminService - deleteCategory()");
		return mapper.deleteCategory(qnaCateIdx);
	}
	
	/*==============================================================
	 * 이벤트
	 * =============================================================
	 * */

	// 이벤트 등록
	public int insertEvent(EventVO event) {
		System.out.println("AdminService - insertEvent()");
		return mapper.insertEvent(event);
	}

	// 이벤트 조회
	// event_idx를 널스트링으로 전달 시 전체 질문 조회
	public List<EventVO> selectEvent(String event_idx) {
		System.out.println("AdminService - selectEvent()");
		return mapper.selectEvent(event_idx);
	}

}
