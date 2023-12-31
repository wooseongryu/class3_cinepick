package com.itwillbs.cinepick.service;

import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.AdminMapper;
import com.itwillbs.cinepick.vo.BookVO;
import com.itwillbs.cinepick.vo.EventCateVO;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;
import com.itwillbs.cinepick.vo.ScheduleVO;
import com.itwillbs.cinepick.vo.ScreenVO;
import com.itwillbs.cinepick.vo.StoreCateVO;
import com.itwillbs.cinepick.vo.StoreVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.UserVO;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapper mapper;
	
	/*====================================================================
	 * 관리자 메인
	 * ===================================================================
	 * */
	
	// 관리자 회원 수 조회
	public int countUser() {
		System.out.println("AdminService - countUser()");
		return mapper.countUser();
	}
	
	// 관리자 최근 등록 영화 조회
	public List<MovieVO> selectRecentRegistMovie() {
		System.out.println("AdminService - selectRecentRegistMovie()");
		return mapper.selectRecentRegistMovie();
	}

	// 관리자 금일 상영작 조회
	public int selectTodayScreen() {
		System.out.println("AdminService - selectTodayScreen()");
		return mapper.selectTodayScreen();
	}
	
	// 관리자 금일 예매 현황 조회
	public int selectTodayBookCount() {
		System.out.println("AdminService - selectTodayBookCount()");
		return mapper.selectTodayBookCount();
	}
	
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
	public List<TheaterVO> selectTheater(int sche_theater_idx) {
		System.out.println("AdminService - selectTheater()");
		return mapper.selectTheater(sche_theater_idx);
	}
	
	// 상영관 조회
	public List<ScreenVO> selectScreen(int screen_theater_idx) {
		System.out.println("AdminService - selectScreen()");
		return mapper.selectScreen(screen_theater_idx);
	}
	
	// 영화 조회
	public List<MovieVO> selectMovie() {
		System.out.println("AdminService - selectMovie()");
		return mapper.selectMovie();
	}
	
	// 영화 재생 시간 조회
	public int selectMovieRunTime(int sche_movie_code) {
		System.out.println("AdminService - selectMovieRunTime()");
		return mapper.selectMovieRunTime(sche_movie_code);
	}
	
	// 상영시간표 중복 확인
	public List<ScheduleVO> scheduleCheck(ScheduleVO schedule) {
		System.out.println("AdminService - scheduleCheck()");
		return mapper.scheduleCheck(schedule);
	}
	
	// 상영시간 생성
	public int insertSchedule(ScheduleVO schedule) {
		System.out.println("AdminService - insertSchedule()");
		return mapper.insertSchedule(schedule);
	}
	
	// 상영시간표 조회
	public List<ScheduleVO> selectSchedule(int sche_idx) {
		System.out.println("AdminService - selectSchedule()");
		return mapper.selectSchedule(sche_idx);
	}
	
	// 상영시간표 삭제
	public int deleteSchedule(int sche_idx) {
		System.out.println("AdminService - deleteSchedule()");
		
		int existCount = mapper.checkExistBook(sche_idx);
		
		if (existCount > 0) {
			return -1;
		}
		
		return mapper.deleteSchedule(sche_idx);
	}
	
	// 상영시간표 수정
	public int updateSchedule(ScheduleVO schedule) {
		System.out.println("AdminService - updateSchedule()");
		
		int existCount = mapper.checkExistBook(schedule.getSche_idx());
		if (existCount > 0) {
			return -1;
		}
		
		return mapper.updateSchedule(schedule);
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
	public List<EventVO> getEvent(String event_idx) {
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
	
	
	//---------------------------------------------------------
	
	// 이벤트 카테고리 등록
	public int insertEventCategory(String eventCate_Subject) {
		System.out.println("AdminService - insertEventCategory()");
		return mapper.insertEventCategory(eventCate_Subject);
	}

	// 이벤트 카테고리 조회
	public List<EventCateVO> getEventCategory() {
		System.out.println("AdminService - getEventCategory()");
		return mapper.selectEventCategory();
	}

	// 이벤트 카테고리 삭제
	public int deleteEventCategory(int eventCate_Idx) {
		System.out.println("AdminService - deleteEventCategory()");
		return mapper.deleteEventCategory(eventCate_Idx);
	}
	
	//---------------------------------------------------------
	
	//극장 조회
	public List<TheaterVO> getTheater(String string) {
		System.out.println("AdminService - getTheater()");
		return mapper.selectAdminTheater(string);
	}
	
	//극장 등록
	public int insertTheater(TheaterVO theater) {
		System.out.println("AdminService - insertTheater()");
		return mapper.insertTheater(theater);
	}
	
	//극장 삭제
	public int deleteTheater(int theaterIdx) {
		System.out.println("AdminService - deleteTheater()");
		return mapper.deleteTheater(theaterIdx);
	}
	
	//극장 수정
	public int updateTheater(TheaterVO theater) {
		System.out.println("AdminService - updateTheater()");
		return mapper.updateTheater(theater);
	}

	
	// 리뷰 목록 조회
	public List<QnaVO> getReviewList(String string) {
		return mapper.selectReviewList(string);
	}
	
	//---------------------------------------------------------
	
	//상영관 조회
	public List<ScreenVO> getScreen(String string) {
		System.out.println("AdminService - getScreen()");
		return mapper.selectAdminScreen(string);
	}
	
	//상영관 등록
	public int insertScreen(ScreenVO screen) {
		System.out.println("AdminService - insertScreen()");
		return mapper.insertScreen(screen);
	}
	
	//상영관 삭제
	public int deleteScreen(int screenIdx) {
		System.out.println("AdminService - deleteScreen()");
		
		int existCount = mapper.checkExistScreen(screenIdx);
		
		if (existCount > 0) {
			return -1;
		}
		return mapper.deleteScreen(screenIdx);
	}
	
	//상영관 수정
	public int updateScreen(ScreenVO screen) {
		System.out.println("AdminService - updateScreen()");
		return mapper.updateScreen(screen);
	}

	// 관리자 리뷰 삭제
	public int myReviewDelete(int review_num) {
		return mapper.deleteMyReview(review_num);
	}
	
	
//---------------------------------------------------------
	

	// 예매내역 조회
	public List<BookVO> getBookList(String string) {
		System.out.println("AdminService - getBookList()");
		return mapper.selectBookList(string);
	}
	
//---------------------------------------------------------
	
	// 스토어 조회
	// store_idx를 널스트링으로 전달 시 전체 질문 조회
	public List<StoreVO> getStore(String store_idx) {
		System.out.println("AdminService - selectStore()");
		return mapper.selectStore(store_idx);
	}

	public int insertStore(StoreVO store) {
		System.out.println("AdminService - insertStore()");
		return mapper.insertStore(store);
	}

	public int deleteStore(String storeIdx) {
		System.out.println("AdminService - deleteStore()");
		return mapper.deleteStore(storeIdx);
	}
	
	public int updateStore(StoreVO store) {
		System.out.println("AdminService - updateStore()");
		return mapper.updateStore(store);
	}
	

	//---------------------------------------------------------
	
	// 스토어 카테고리 조회
	public int insertStoreCategory(String storeCate_Subject) {
		System.out.println("AdminService - insertStoreCategory()");
		return mapper.insertStoreCategory(storeCate_Subject);
	}

	public List<StoreCateVO> getstoreCategory() {
		System.out.println("AdminService - getStoreCategory()");
		return mapper.selectStoreCategory();
	}

	public int deleteStoreCategory(int storeCate_idx) {
		System.out.println("AdminService - deleteStoreCategory()");
		return mapper.deleteStoreCategory(storeCate_idx);
	}
	
	//---------------------------------------------------------
	
	
}
