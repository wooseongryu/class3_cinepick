package com.itwillbs.cinepick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.LikeMovieMapper;
import com.itwillbs.cinepick.vo.LikeMovieVO;

@Service
public class LikeMovieService {
	@Autowired
	private LikeMovieMapper mapper;

	public int insertLikeBtn(String user_id, int movie_code) {
		return mapper.insertLikeBtn(user_id, movie_code);
	}

	public int deleteLikeBtn(String user_id, int movie_code) {
		return mapper.deleteLikeBtn(user_id, movie_code);
	}

	public LikeMovieVO selectLikeMovie(String user_id, int movie_code) {
		return mapper.selectLikeMovie(user_id, movie_code);
	}

	
	
	
}
