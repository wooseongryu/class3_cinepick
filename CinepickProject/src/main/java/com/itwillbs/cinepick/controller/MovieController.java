package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.cinepick.service.MovieService;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	
	// 현재 상영작 목록 보기
	@GetMapping("movieList")
	public String movieList(Model model) {
		System.out.println("MovieController - movieList");
//		movieService.
		
		
		
		return "cinepick/movie/movie_list";
	}
	
	// 개봉 예정작 목록 보기
	@GetMapping("movieListUpComming")
	public String movieListUpComming() {
		System.out.println("MovieController - movieListUpComming");
		return "cinepick/movie/movie_list_upcomming";
	}
	
	// 영화정보 상세보기 - 관람평 최신순
	@GetMapping("movieDetail")
	public String movieDetail() {
		System.out.println("MovieController - movieDetail");
		return "cinepick/movie/movie_detail";
	}
	
	// 영화정보 상세보기 - 관람평 공감순
	@GetMapping("movieDetail2")
	public String movieDetail2() {
		System.out.println("MovieController - movieDetail2");
		return "cinepick/movie/movie_detail2";
	}
}
