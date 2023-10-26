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
public interface CustomerMapper {
	
	// 공지사항 목록 조회
	List<NoticeVO> selectNoticeList(@Param("startRow") int startRow, @Param("listLimit") int listLimit);

	
	// 공지사항 목록 수 조회
	int selectNoticeListCount();


	// 자주묻는 질문 목록 조회
	List<QnaVO> selectQnaList(@Param("startRow") int startRow, 
			@Param("listLimit") int listLimit,
			@Param("qnaCateIdx") int qnaCateIdx);


	// 자주묻는 질문 목록 수 조회
	int selectQnaListCount(@Param("qnaCateIdx") int qnaCateIdx);


	// 자주묻는 질문 카테고리 조회
	List<QnaCateVO> selectQnaCateList();



	

}
