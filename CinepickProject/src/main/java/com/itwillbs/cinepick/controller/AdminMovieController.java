package com.itwillbs.cinepick.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.server.header.XFrameOptionsServerHttpHeadersWriter.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.MovieService;
import com.itwillbs.cinepick.vo.BoxOfficeVO;
import com.itwillbs.cinepick.vo.MovieVO;

import lombok.Getter;

/*====================================================================
 *  영화 (따로 빼둠)
 * ===================================================================
 * */

@Controller
public class AdminMovieController {
	@Autowired
	private MovieService movieService;
	
	//========= 관리자 영화정보관리 목록 ==========
	@GetMapping("adminMovieList")
	public String adminMovieList(Model model, HttpSession session) {
		System.out.println("AdminController - adminMovieList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<MovieVO> movieList = movieService.selectMvList();
//		System.out.println(movieList);
		
		model.addAttribute("movieList", movieList);
		
		
		return "mypage/admin/board_movie";
	}
	
	//========== 영화상세정보 =============
	@GetMapping("adminMovieDetail")
	public String adminMovieDetail(@RequestParam("movie_code") int movie_code, Model model) {
//		System.out.println(movie_code);
		
		MovieVO movie = movieService.movieDetail(movie_code);
//		System.out.println(movie);
		movie.setMovie_plot(movie.getMovie_plot().replaceAll("<br>", "\r\n"));
		model.addAttribute("movie", movie);
		
		return "mypage/admin/movie_detail";
	}

	
	
	// ======== 관리자 영화정보등록Form =========
	@GetMapping("adminMovieInsert")
	public String adminMovieInsert(HttpSession session, Model model) {
		System.out.println("AdminController - adminMovieInsert()");
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		return "mypage/admin/insert_movie";
	}
	
	// ========== 관리자 영화정보등록Pro ===========
	@PostMapping("adminMovieInsert2")
	public String adminMovieInsert2(MovieVO movie, Model model) {
		System.out.println("AdminController - adminMovieInsert2()");
//		System.out.println(movie);
			
		//등록된 영화인지 판별
		int count = movieService.checkedMovie(movie);
			
		if(count > 0) {
			model.addAttribute("msg", "이미 등록된 영화입니다.");
			return "fail_back";
		}
		
		movie.setMovie_poster(movie.getMovie_poster().trim());
		movie.setMovie_vod(movie.getMovie_vod().trim());
		
		int insertMovieCount = movieService.insertMovie(movie);
		
		if(insertMovieCount > 0) {
			model.addAttribute("msg", "영화를 등록하였습니다.");
			model.addAttribute("script","window.opener.location.reload(); window.close()");
			model.addAttribute("targetURL", "adminMovieInsert");
			return "forward";
		} else {
			model.addAttribute("msg", "영화등록을 실패하였습니다.");
			return "fail_back";
		}
		
	}
	
	
	//======= 영화정보 수정Form =======
	@GetMapping("movieDetailModify")
	public String movieDetailModify(MovieVO movie, HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		
		movie = movieService.movieDetail(movie.getMovie_code());
		movie.setMovie_plot(movie.getMovie_plot().replaceAll("<br>", "\r\n"));
		
		model.addAttribute("movie", movie);
		
		return "mypage/admin/movie_detail_modify";
	}
	
	//======= 영화정보 수정Pro =======	
	@PostMapping("movieDetailModifyPro")
	public String movieDetailModifyPro(MovieVO movie, Model model) {
		movie.setMovie_poster(movie.getMovie_poster().trim());
		movie.setMovie_vod(movie.getMovie_vod().trim());
		
		int updateMovieCount = movieService.modifyMovie(movie);
		
		
		if(updateMovieCount > 0) {
			model.addAttribute("msg", "영화를 수정하였습니다.");
			model.addAttribute("targetURL", "adminMovieDetail?movie_code="+ movie.getMovie_code());
//			model.addAttribute("movie_code", movie.getMovie_code());
			return "forward";
		} else {
			model.addAttribute("msg", "영화수정을 실패하였습니다.");
			return "fail_back";
		}
		
	}

	//======= 영화개봉상태 업데이트 =======		
	@GetMapping("MovieStatusUpdate")
	public String MovieStatusUpdate(Model model, HttpSession session) {
		System.out.println("MovieStatusUpdate - 개봉상태 업데이트");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int StatusUpdateCount = movieService.updateMovieStatus();
		if(StatusUpdateCount > 0) {
			model.addAttribute("msg", "개봉상태가 업데이트되었습니다.");
			model.addAttribute("targetURL", "adminMovieList");
			return "forward";
		} else {
			model.addAttribute("msg", "개봉상태 변경할 내역이 없습니다.");
			return "fail_back";
		}
		
	}
	//======영화 상영종료=====
	@GetMapping("MovieStatusFin")
	public String movieStatusFin(int movie_code, Model model, HttpSession session) {
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		int updateCount = movieService.updateMovieStatusFin(movie_code);
		
		if(updateCount > 0) {
			model.addAttribute("msg", "상영영화를 내렸습니다.");
			model.addAttribute("targetURL", "adminMovieList");
			return "forward";
		} else {
			model.addAttribute("msg", "개봉상태 업데이트를 실패하였습니다.\n 변경할 내역이 없습니다.");
			return "fail_back";
		}
		
	}
	
	

	//======= 영화정보 삭제 =======	
	@GetMapping("MovieDelete")
	public String movieDelete(int movie_code, Model model) {
		int deleteMovieCount = movieService.deleteMovie(movie_code);
		
		
		
		if(deleteMovieCount > 0) {
			model.addAttribute("msg", "영화를 삭제하였습니다.");
			model.addAttribute("script", "window.opener.location.reload(); window.close()");
			return "forward";
		} else if (deleteMovieCount == -1) {
			model.addAttribute("msg", "이미 등록된 스케쥴이 있습니다! 삭제 불가.");
			return "fail_back";
		} else {
			model.addAttribute("msg", "영화삭제를 실패하였습니다.");
			return "fail_back";
		}
		
	}
	
	
	//==========================================================================
	
	// 박스오피스 조회	
	
	//==========================================================================
	// 관리자 일일박스오피스 조회
	@GetMapping("adminBoxOfficeList")
	public String adminBoxOfficeList(HttpSession session, Model model) {
		System.out.println("AdminController - adminMovieList()");
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		List<BoxOfficeVO> movieBOList = movieService.selectMvBOList();
		System.out.println(movieBOList);
		
		model.addAttribute("movieBOList", movieBOList);
		
		
		return "mypage/admin/board_movie_boxoffice";
	}
	
	//박스오피스조회 팝업
	@GetMapping("adminSearchBoxoffice")
	public String adminShowBoxOffice() {
		return "mypage/admin/update_movie_boxoffice";
	}
	
	//박스오피스 등록(업데이트)Pro
	@PostMapping("adminUpdateBoxOffice")
	public String adminUpdateBoxOffice(String jsonData, Model model) {
		System.out.println(jsonData);
		JSONArray ja = new JSONArray(jsonData);
		
		System.out.println(ja.toString());
		
		//테이블에 데이터 있으면 기존목록 삭제
		List<BoxOfficeVO> movieBOList = movieService.selectMvBOList();
		System.out.println(movieBOList);
		if(movieBOList != null) {
			int deleteBOCount = movieService.deleteBoxoffice();
		}
		
		int insertBOCount = 0;
		for(int i = 0; i < ja.length(); i++) {
			JSONObject jo = new JSONObject(ja.get(i).toString());
//			System.out.println(jo.toString());
			Map<String, Object> map = jo.toMap(); 
			System.out.println(map);
			
			insertBOCount = movieService.insertBoxoffice(map);
		}
//		System.out.println(insertBOCount);
		if(insertBOCount > 0) {
			model.addAttribute("msg", "박스오피스 순위목록을 등록하였습니다.");
			model.addAttribute("script", "window.opener.location.reload(); window.close()");
			return "forward";
		} else {
			model.addAttribute("msg", "박스오피스 순위등록을 실패하였습니다.");
			return "fail_back";
		}
	}
	
	
	//박스오피스목록 삭제
	@GetMapping("adminDeleteBoxoffice")
	public String adminDeleteBoxoffice(HttpSession session, Model model) {
		
		String sId = (String)session.getAttribute("sId");
		String isAdmin = (String)session.getAttribute("isAdmin");
		
		if(sId == null || isAdmin.equals("N")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		
		int deleteBOCount = movieService.deleteBoxoffice();
		
		if(deleteBOCount > 0) {
			model.addAttribute("msg", "박스오피스 순위목록을 삭제하였습니다.");
//			model.addAttribute("script", "location.reload()");
			model.addAttribute("targetURL", "adminBoxOfficeList");
			return "forward";
		} else {
			model.addAttribute("msg", "박스오피스 순위목록 삭제를 실패하였습니다.");
			return "fail_back";
		}
	}
	
	
}
