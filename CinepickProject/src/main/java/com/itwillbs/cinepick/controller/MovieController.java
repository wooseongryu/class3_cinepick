package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieController {
	@GetMapping("movieList")
	public String movieList() {
		System.out.println("MovieController - movieList");
		return "cinepick/movie/movie_list";
	}
	
	@GetMapping("movieListUpComming")
	public String movieListUpComming() {
		System.out.println("MovieController - movieListUpComming");
		return "cinepick/movie/movie_list_upcomming";
	}
	
	@GetMapping("movieDetail")
	public String movieDetail() {
		System.out.println("MovieController - movieDetail");
		return "cinepick/movie/movie_detail";
	}
	
	@GetMapping("movieDetail2")
	public String movieDetail2() {
		System.out.println("MovieController - movieDetail2");
		return "cinepick/movie/movie_detail2";
	}
}
