package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.AdminMapper;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;
import com.itwillbs.cinepick.vo.ScreenVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.UserVO;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper mapper;
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	// 관리자 권한 부여/해제
	public int updateUserAuthorize(UserVO user) {
		System.out.println("AdminService - updateUserAuthorize()");
		return mapper.updateUserAuthorize(user);
	}
	
	/*====================================================================
	 * 5. 상영 시간표
	 * ===================================================================
	 * */
	
	// 극장 조회
	public List<TheaterVO> selectTheater() {
		System.out.println("AdminService - selectTheater()");
		return mapper.selectTheater();
	}
	
	// 상영관 조회
	public List<ScreenVO> selectScreen() {
		System.out.println("AdminService - selectScreen()");
		return mapper.selectScreen();
	}
	
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
	
	// 자주묻는 질문 삭제
	public int deleteQna(String qnaIdx) {
		System.out.println("AdminService - deleteQna()");
		return mapper.deleteQna(qnaIdx);
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
	
	/*====================================================================
	 * 1:1 문의
	 * ===================================================================
	 * */

	// 1:1문의 조회
	// myQuestion_num을 널스트링으로 전달 시 전체 질문 조회
	public List<MyQuestionVO> selectOTO(String myQuestion_num) {
		System.out.println("AdminService - selectOTO()");
		return mapper.selectOTO(myQuestion_num);
	}
	
	// 관리자 1:1문의 답변 등록
	public int updateOTO(MyQuestionVO myQuestion) {
		System.out.println("AdminService - updateOTO()");
		return mapper.updateOTO(myQuestion);
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

	// 이벤트 수정
	public int updateEvent(EventVO event) {
		System.out.println("AdminService - updateEvent()");
		return mapper.updateEvent(event);
	}

	// 이벤트 삭제
	public int deleteEvent(String event_idx) {
		System.out.println("AdminService - deleteEvent(event_idx)");
		return mapper.deleteEvent(event_idx);
	}

}
