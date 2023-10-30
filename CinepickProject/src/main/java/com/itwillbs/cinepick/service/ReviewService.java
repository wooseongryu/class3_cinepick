package com.itwillbs.cinepick.service;

import java.util.List;

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

	public List<ReviewVO> selectReviewList(int movie_code) {
		return mapper.selectReviewList(movie_code);
	}

	public int countReviewList(int movie_code) {
		return mapper.countReviewList(movie_code);
	}

}
