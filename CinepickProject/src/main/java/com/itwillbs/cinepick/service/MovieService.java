package com.itwillbs.cinepick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.MovieMapper;
import com.itwillbs.cinepick.vo.MovieVO;

@Service
public class MovieService {
	@Autowired
	private MovieMapper movieMapper;

	//영화등록
	public int insertMovie(MovieVO movie) {
		return movieMapper.insertMovie(movie);
	}


	//영화목록출력
	public List<MovieVO> selectMvList() {
		System.out.println("selectMvList");
		return movieMapper.selectMovieList();
	}

	public MovieVO movieDetail(int movie_code) {
		return movieMapper.selectMvDetail(movie_code);
	}

	public int modifyMovie(MovieVO movie) {
		return movieMapper.modifyMovie(movie);
	}

	public int deleteMovie(int movie_code) {
		return movieMapper.deleteMovie(movie_code);
	}
	
	
	
	//박스오피스 등록
	public int insertBoxoffice(Map<String, Object> map) {
		return movieMapper.insertBoxoffice(map);
	}
	
}
