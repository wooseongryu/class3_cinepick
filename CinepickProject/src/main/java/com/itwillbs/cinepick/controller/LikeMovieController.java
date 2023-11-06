package com.itwillbs.cinepick.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.cinepick.service.LikeMovieService;
import com.itwillbs.cinepick.vo.LikeMovieVO;

@Controller
public class LikeMovieController {
	@Autowired
	private LikeMovieService service;
	
	
	@ResponseBody
	@PostMapping("likeBtn")
	public String likeBtn(HttpSession session,Model model,
						@RequestParam("user_id") String user_id,
						@RequestParam("movie_code") int movie_code,
						@RequestParam("isLike") boolean isLike) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인하셔야 이용가능합니다. \n 로그인 하시겠습니까?");
			model.addAttribute("targetURL", "login");
			return "forward";
		}
		
		
		int insertCount = 0;
		int deleteCount = 0;
		
		if(isLike) {
			deleteCount = service.deleteLikeBtn(user_id, movie_code);
			
		} else {
			insertCount = service.insertLikeBtn(user_id, movie_code);
			
		}
		if (insertCount > 0) {
		    System.out.println("찜 성공");
		    return "true";
		} else if (deleteCount > 0) {
		    System.out.println("찜해제 성공");
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
	
	@ResponseBody
	@GetMapping("SelectLikeMovie")
	public LikeMovieVO SelectLikeMovie(@RequestParam("user_id") String user_id,@RequestParam("movie_code") int movie_code) {
		LikeMovieVO like = service.selectLikeMovie(user_id, movie_code);
		
		return like;
	}
	
}
