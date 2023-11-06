package com.itwillbs.cinepick.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.LikeMovieService;

@Controller
public class LikeMovieController {
	@Autowired
	private LikeMovieService service;
	
	
	@ResponseBody
	@PostMapping("likeBtn")
	public String likeBtn(@RequestParam("user_id") String user_id,
						@RequestParam("movie_code") int movie_code,
						@RequestParam("isLike") boolean isLike) {
		int insertCount = 0;
		int deleteCount = 0;
		
		if(isLike) {
			deleteCount = service.deleteLikeBtn(user_id, movie_code);
			
		} else {
			insertCount = service.insertLikeBtn(user_id, movie_code);
			
		}
		if(insertCount > 0 || deleteCount > 0) {
			System.out.println("찜 성공");
			return "true";
		} else {
			System.out.println("찜 실패");
			return "false";
		}
		
//		if(deleteCount > 0) {
//			System.out.println("찜해제 성공");
//			return "true";
//		} else {
//			System.out.println("찜해제 실패");
//			return "false";
//		}
//		return;
		
		
		
		
//		return "";
	}
	
	
}
