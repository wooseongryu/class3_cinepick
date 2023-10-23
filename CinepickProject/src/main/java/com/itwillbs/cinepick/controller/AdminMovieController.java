package com.itwillbs.cinepick.controller;

import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.cinepick.service.MovieService;
import com.itwillbs.cinepick.vo.MovieVO;

@Controller
public class AdminMovieController {
	@Autowired
	private MovieService movieService;
	
	/*====================================================================
	 *  영화 (따로 빼둠)
	 * ===================================================================
	 * */
	
	// 관리자 영화정보관리 목록

	@GetMapping("adminMovieList")
	public String adminMovieList() {
		System.out.println("AdminController - adminMovieList()");
		return "mypage/admin/board_movie";
	}
	
	// 관리자 영화정보등록 Form
	@GetMapping("adminMovieInsert")
	public String adminMovieInsert() {
		System.out.println("AdminController - adminMovieInsert()");
		return "mypage/admin/insert_movie";
	}
	
	// 관리자 영화정보등록 Pro
	@PostMapping("adminMovieInsert2")
	public String adminMovieInsert2(MovieVO movie, Model model) {
		System.out.println("AdminController - adminMovieInsert2()");
		System.out.println(movie);
			int insertMovieCount = movieService.insertMovie(movie);
			
			if(insertMovieCount > 0) {
				model.addAttribute("msg", "영화를 등록하였습니다.");
				model.addAttribute("targetURL", "adminMovieInsert");
				return "forward";
			} else {
				model.addAttribute("msg", "영화등록을 실패하였습니다.");
				return "fail_back";
			}
			
	}
	
	// 관리자 일일박스오피스 조회Form
	@GetMapping("adminBoxOfficeList")
	public String adminBoxOfficeList() {
		return "mypage/admin/board_movie_boxoffice";
	}
	
	//박스오피스조회 팝업
	@GetMapping("boxofficeUpdate")
	public String adminShowBoxOffice() {
		return "mypage/admin/update_movie_boxoffice";
	}
	
	//박스오피스 등록(업데이트)Pro
	@PostMapping("adminUpdateBoxOffice")
	public String adminUpdateBoxOffice(String jsonData) {
		System.out.println(jsonData);
		JSONArray ja = new JSONArray(jsonData);
		
		System.out.println(ja.toString());
		for(int i = 0; i < ja.length(); i++) {
			JSONObject jo = new JSONObject(ja.get(i).toString());
//			System.out.println(jo.toString());
			Map<String, Object> map = jo.toMap(); 
			System.out.println(map);
			
			//db로 넣기 작업
//			movieService.insertBoxoffice(map);
		}
		
		return"";
	}
	
	
}
