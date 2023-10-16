package com.itwillbs.cinepick.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.NoticeVO;

@Mapper
public interface AdminMapper {

	// 공지등록
	int insertNotice(NoticeVO notice);

}
