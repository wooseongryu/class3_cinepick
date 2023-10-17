package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.NoticeVO;

@Mapper
public interface AdminMapper {

	// 공지등록
	int insertNotice(NoticeVO notice);

	List<NoticeVO> selectNotice();

	int insertCategory(String qnaCateSubject);

	List<String> selectCategory();

}
