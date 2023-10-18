package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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

	List<NoticeVO> selectNoticeList();
	
	NoticeVO selectNotice(int noticeIdx);
	
	int deleteNotice(int noticeIdx);

	int updateNotice(NoticeVO notice);
	
	/*==============================================================
	 * 자주 묻는 질문
	 * =============================================================
	 * */

	int insertQna(QnaVO qna);

	List<QnaVO> selectQna();
	
	/*==============================================================
	 * 자주 묻는 질문 카테고리
	 * =============================================================
	 * */
	
	int insertCategory(String qnaCateSubject);

	List<QnaCateVO> selectCategory();

}
