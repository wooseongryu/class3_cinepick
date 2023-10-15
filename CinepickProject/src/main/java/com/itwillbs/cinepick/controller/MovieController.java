package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieController {
	// 현재 상영작 목록 보기
	@GetMapping("movieList")
	public String movieList() {
		System.out.println("MovieController - movieList");
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
