package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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

@Mapper
public interface AdminMapper {
	
	/*====================================================================
	 * 관리자 메인
	 * ===================================================================
	 * */

	int countUser();
	
	List<MovieVO> selectRecentRegistMovie();

	int selectTodayScreen();
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	int updateUserAuthorize(UserVO user);
	
	/*====================================================================
	 * 5. 상영 시간표
	 * ===================================================================
	 * */

	List<TheaterVO> selectTheater(int sche_theater_idx);

	List<ScreenVO> selectScreen(int screen_theater_idx);

	List<MovieVO> selectMovie();

	int selectMovieRunTime(int sche_movie_code);

	List<ScheduleVO> scheduleCheck(ScheduleVO schedule);

	int insertSchedule(ScheduleVO schedule);

	List<ScheduleVO> selectSchedule(int sche_idx);

	int deleteSchedule(int sche_idx);

	int updateSchedule(ScheduleVO schedule);
	
	/*==============================================================
	 * 공지 
	 * =============================================================
	 * */
	int insertNotice(NoticeVO notice);
	
	List<NoticeVO> selectNotice(String noticeIdx);
	
	int deleteNotice(int noticeIdx);

	int updateNotice(NoticeVO notice);
	
	NoticeVO selectNotice(int noticeIdx);
	/*==============================================================
	 * 자주 묻는 질문
	 * =============================================================
	 * */

	int insertQna(QnaVO qna);
	
	List<QnaVO> selectQna(String qnaIdx);
	
	int updateQna(QnaVO qna);
	
	int deleteQna(String qnaIdx);
	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	int insertCategory(String qnaCateSubject);

	List<QnaCateVO> selectCategory();

	int deleteCategory(int qnaCateIdx);
	
	/*====================================================================
	 * 1:1 문의
	 * ===================================================================
	 * */
	
	List<MyQuestionVO> selectOTO(String myQuestion_num);
	
	int updateOTO(MyQuestionVO myQuestion);
	
	/*==============================================================
	 * 이벤트
	 * =============================================================
	 * */

	int insertEvent(EventVO event);

	List<EventVO> selectEvent(String event_idx);

	int updateEvent(EventVO event);

	int deleteEvent(String event_idx);
	
	
	/*==============================================================
	 * 이벤트 카테고리
	 * =============================================================
	 * */
	
	int insertEventCategory(String eventCate_Subject);

	List<EventCateVO> selectEventCategory();

	int deleteEventCategory(int eventCate_Idx);
	
	
	/*==============================================================
	 * 극장(영화관) 카테고리
	 * =============================================================
	 * */

	List<TheaterVO> selectAdminTheater(String string);
	
	int insertTheater(TheaterVO theater);

	int deleteTheater(int theaterIdx);

	int updateTheater(TheaterVO theater);
	
	/*==============================================================
	 * 상영관 카테고리
	 * =============================================================
	 * */

	List<ScreenVO> selectAdminScreen(String string);

	int insertScreen(ScreenVO screen);

	int deleteScreen(int screenIdx);

	int updateScreen(ScreenVO screen);

	
	
	
	/*==============================================================
	 * 리뷰 
	 * =============================================================
	 * */
	
	// 전체 리뷰 조회
	List<QnaVO> selectReviewList(String string);
	
	// 관리자 리뷰 삭제
	int deleteMyReview(int review_num);
	
	/*==============================================================
	 * 스토어 
	 * =============================================================
	 * */
	
	
	List<StoreVO> selectStore(String store_idx);

	int insertStore(StoreVO store);

	int deleteStore(String storeIdx);

	int updateStore(StoreVO store);

	
	/*==============================================================
	 * 스토어 카테고리
	 * =============================================================
	 * */
	
	
	List<StoreCateVO> selectStoreCategory();

	int insertStoreCategory(String storeCate_Subject);
//
//	int deleteStoreCategory(int storeCate_idx);

	
	

	/*==============================================================
	 * 예매내역 
	 * =============================================================
	 * */
	
	// 예매내역 조회
	List<BookVO> selectBookList(String string);

}
