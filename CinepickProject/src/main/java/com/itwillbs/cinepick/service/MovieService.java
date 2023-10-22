package com.itwillbs.cinepick.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.MovieMapper;

@Service
public class MovieService {
	@Autowired
	private MovieMapper movieMapper;
	
	
}
