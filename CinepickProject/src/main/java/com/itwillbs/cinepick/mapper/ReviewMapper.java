package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	int reviewInsert(ReviewVO review);

	List<ReviewVO> selectReviewList(int movie_code);

}
