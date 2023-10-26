package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.MainMapper;
import com.itwillbs.cinepick.vo.MovieVO;

@Service
public class MainService {
	
	@Autowired
	private MainMapper mapper;

	public List<MovieVO> mainMovieList() {
		return mapper.mainMovieList();
	}
	
	
	
}
