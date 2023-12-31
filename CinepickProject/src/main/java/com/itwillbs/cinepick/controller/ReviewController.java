package com.itwillbs.cinepick.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.cinepick.service.ReviewService;
import com.itwillbs.cinepick.vo.ReviewVO;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService service;
	
	//리뷰등록
	@GetMapping("reviewWritePro")
	public String reviewWritePro(HttpSession session, ReviewVO review, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인 필수!");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		review.setUser_id(sId);
		
		//별점이나 내용 작성 안했을 때
		if(review.getReview_rating() == 0) {
			model.addAttribute("msg", "별점등록을 해주세요.");
			return "fail_back";
		}
		if(review.getReview_content() == null || review.getReview_content().equals("") ) { //왜 안됨...?
			model.addAttribute("msg", "리뷰내용을 작성 해주세요.");
			return "fail_back";
		}
		//줄바꿈 replace
		review.setReview_content(review.getReview_content().replace("\r\n","<br>"));
		
		int insertCount =  service.reviewInsert(review);
		int movie_code = review.getMovie_code();
		
		if(insertCount > 0) {
			model.addAttribute("msg", "리뷰를 작성하였습니다.");
			model.addAttribute("targetURL", "movieDetail?movie_code=" + movie_code);
			return "forward";
		} else {
			model.addAttribute("msg", "리뷰작성을 실패하였습니다.");
			return "fail_back";
		}
	}
	
	//리뷰 삭제
	@GetMapping("ReviewDelete")
	public String reviewDelete(@RequestParam("user_id") String user_id
							, @RequestParam("movie_code") int movie_code
							, @RequestParam("review_num") int review_num
							, HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null|| !user_id.equals(sId)) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		System.out.println(user_id);
		int deleteCount = service.reviewDelete(user_id, movie_code, review_num);
		
		if(deleteCount > 0) {
			model.addAttribute("msg", "리뷰를 삭제하였습니다.");
			model.addAttribute("targetURL", "movieDetail?movie_code=" + movie_code);
			return "forward";
		} else {
			model.addAttribute("msg", "리뷰삭제를 실패하였습니다.");
			return "fail_back";
		}
		
	}
	
	
	@ResponseBody
	@PostMapping("reviewModifyPro")
	public String reviewModifyPro(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		if(sId == null|| !map.get("user_id").equals(sId)) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		System.out.println("넘어온거:" + map);
		System.out.println("리뷰내용: " + map.get("review_content"));
//		map.set("review_content", map.get("review_content").replace("\r\n","<br>"));
//		map.review_content = map.review_content.trim();
		
		map.replace("review_content",map.get("review_content").replace("\r\n","<br>") );
		
		
//		gson.fromJson(map, review);
		int updateRvCount = service.reviewUpdate(map);
		if(updateRvCount > 0) {
			return "true";
		} else {
			return "false";
		}
	
//		return "";
	}
	
	
}
