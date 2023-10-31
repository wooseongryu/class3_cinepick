package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.cinepick.vo.ReviewVO;

@Mapper
public interface ReviewMapper {

	int reviewInsert(ReviewVO review);

	List<ReviewVO> selectReviewList(int movie_code);

	int countReviewList(int movie_code);

	int reviewDelete(@Param("user_id")String user_id, @Param("movie_code") int movie_code, @Param("review_num") int review_num);

}
