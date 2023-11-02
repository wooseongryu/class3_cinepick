package com.itwillbs.cinepick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.ReviewMapper;
import com.itwillbs.cinepick.vo.ReviewVO;

@Service
public class ReviewService {
	@Autowired
	private ReviewMapper mapper;

	public int reviewInsert(ReviewVO review) {
		return mapper.reviewInsert(review);
	}

	public List<ReviewVO> selectReviewList(int movie_code, int startRow, int listLimit) {
		return mapper.selectReviewList(movie_code, startRow, listLimit);
	}

	public int countReviewList(int movie_code) {
		return mapper.countReviewList(movie_code);
	}

	public int reviewDelete(String user_id, int movie_code, int review_num) {
		return mapper.reviewDelete(user_id, movie_code, review_num);
	}

	public int reviewUpdate(Map<String, String> map) {
		return mapper.reviewUpdate(map);
	}

}
