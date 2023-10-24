package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;
import com.itwillbs.cinepick.vo.ScreenVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.UserVO;

@Mapper
public interface AdminMapper {
	
	/*====================================================================
	 * 관리자 회원 정보 관리 페이지
	 * ===================================================================
	 * */
	
	int updateUserAuthorize(UserVO user);
	
	/*====================================================================
	 * 5. 상영 시간표
	 * ===================================================================
	 * */

	List<TheaterVO> selectTheater();

	List<ScreenVO> selectScreen();

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

	
	
	// 공지사항 목록 조회
	List<NoticeVO> selectNoticeList(@Param("startRow") int startRow, @Param("listLimit") int listLimit);

	int selectNoticeListCount();

	

}
