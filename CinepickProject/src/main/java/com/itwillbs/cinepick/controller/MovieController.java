package com.itwillbs.cinepick.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.MovieService;
import com.itwillbs.cinepick.service.ReviewService;
import com.itwillbs.cinepick.vo.BoxOfficeVO;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.ReviewVO;
import com.itwillbs.cinepick.vo.TheaterVO;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private ReviewService reviewService;
	
	
	// 현재 상영작 목록 보기
	@GetMapping("movieList")
	public String movieList(Model model, @RequestParam(defaultValue = "true") boolean isOpen, @RequestParam(defaultValue = "")String MvListType) {
		System.out.println("MovieController - movieList");
//		isOpen = true;
		List<MovieVO> movieList = movieService.showMvList(isOpen, MvListType);
//		String movie_poster = movie
		
		model.addAttribute("movieList", movieList);
		
		
		return "cinepick/movie/movie_list";
	}
	
	//현재 상영작 ajax
	@GetMapping("movieListJson")
	@ResponseBody
	public String movieLlistJson(@RequestParam String MvListType, @RequestParam(defaultValue = "true") boolean isOpen, Model model) {
		List<MovieVO> movieList = movieService.showMvList(isOpen, MvListType);
//		System.out.println(movieList);
		
		JSONArray ja = new JSONArray(movieList);
//		System.out.println(ja.toString());
		
		return ja.toString();
	}
	
	
	
	// 개봉 예정작 목록 보기
	@GetMapping("movieListUpComming")
	public String movieListUpComming(Model model, @RequestParam(defaultValue = "false") boolean isOpen,@RequestParam(defaultValue = "") String MvListType) {
		System.out.println("MovieController - movieListUpComming");
		List<MovieVO> movieList = movieService.showMvList(isOpen, MvListType);
		model.addAttribute("movieList", movieList);
		return "cinepick/movie/movie_list_upcomming";
	}
	
	// 영화정보 상세보기 - 관람평 최신순
	@GetMapping("movieDetail")
	public String movieDetail(@RequestParam ("movie_code") int movie_code, Model model) { 
 		System.out.println("MovieController - movieDetail");
//		System.out.println(movie_code);
 		MovieVO movie = movieService.movieDetail(movie_code);
 		String[] stills = movie.getMovie_still().split("\\|");
// 		for(int i = 0; i < stills.length; i++) {
// 			System.out.println(stills[i]);
// 		}
 		List<String> movie_stills = Arrays.asList(stills);
 		movie.setMovie_stills(movie_stills);
 		
 		List<ReviewVO> review = reviewService.selectReviewList(movie_code); 
 		
 		double rvRate = 0;
 		for(ReviewVO rv : review) {
 			rvRate += rv.getReview_rating();
 		}
 		
 		Integer rvCount = reviewService.countReviewList(movie_code);
// 		if(rvCount == null) { 
// 			rvCount = 0;
// 		}
 		
 		
 		double rvAvg = rvRate / rvCount;
// 		System.out.println(rvAvg);
 		movie.setMovie_avg(Math.round(rvAvg * 10)  / 10.0);
 		
 		
 		model.addAttribute("review", review);
		model.addAttribute("movie", movie);
		
//		return "";
		return "cinepick/movie/movie_detail";
	}
	
	// 영화정보 상세보기 - 관람평 공감순
	@GetMapping("movieDetail2")
	public String movieDetail2() {
		System.out.println("MovieController - movieDetail2");
//		return "cinepick/movie/movie_detail2";
		return"";
	}
}
