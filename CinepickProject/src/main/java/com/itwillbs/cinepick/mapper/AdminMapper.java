package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaCateVO;
import com.itwillbs.cinepick.vo.QnaVO;

@Mapper
public interface AdminMapper {

	// 공지등록
	int insertNotice(NoticeVO notice);

	List<NoticeVO> selectNotice();

	int insertCategory(String qnaCateSubject);

	List<QnaCateVO> selectCategory();

	int insertQna(QnaVO qna);

	List<QnaVO> selectQna();

}
