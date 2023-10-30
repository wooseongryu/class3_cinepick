package com.itwillbs.cinepick.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.ReviewService;
import com.itwillbs.cinepick.vo.ReviewVO;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService service;
	
	@GetMapping("reviewWritePro")
	public String reviewWritePro(HttpSession session, ReviewVO review, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 필수!");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		review.setUser_id(sId);
		
		int insertCount =  service.reviewInsert(review);
		int movie_code = review.getMovie_code();
		
		
		return "redirect:/movieDetail?movie_code=" + movie_code;
	}
	

}
