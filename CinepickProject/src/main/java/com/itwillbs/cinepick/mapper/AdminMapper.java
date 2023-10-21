package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;

@Mapper
public interface AdminMapper {

	/*==============================================================
	 * 공지 
	 * =============================================================
	 * */
	int insertNotice(NoticeVO notice);
	
	List<NoticeVO> selectNotice(String noticeIdx);
	
	int deleteNotice(int noticeIdx);

	int updateNotice(NoticeVO notice);
	
	/*==============================================================
	 * 자주 묻는 질문
	 * =============================================================
	 * */

	int insertQna(QnaVO qna);
	
	List<QnaVO> selectQna(String qnaIdx);
	
	int updateQna(QnaVO qna);
	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	int insertCategory(String qnaCateSubject);

	List<QnaCateVO> selectCategory();

	int deleteCategory(int qnaCateIdx);
	
	/*==============================================================
	 * 이벤트
	 * =============================================================
	 * */

	int insertEvent(EventVO event);

	List<EventVO> selectEvent(String event_idx);

	int updateEvent(EventVO event);

	int deleteEvent(String event_idx);

}
