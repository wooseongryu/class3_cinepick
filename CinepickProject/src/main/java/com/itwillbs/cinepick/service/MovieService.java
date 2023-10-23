package com.itwillbs.cinepick.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.MovieMapper;
import com.itwillbs.cinepick.vo.MovieVO;

@Service
public class MovieService {
	@Autowired
	private MovieMapper movieMapper;

	public int insertMovie(MovieVO movie) {
		return movieMapper.insertMovie(movie);
	}

	public void insertBoxoffice(Map<String, Object> map) {
		movieMapper.insertBoxoffice(map);
		
	}
	
	
}
