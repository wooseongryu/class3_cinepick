package com.itwillbs.cinepick;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.cinepick.service.MainService;
import com.itwillbs.cinepick.service.MovieService;
import com.itwillbs.cinepick.vo.MovieVO;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	@Autowired
	private MainService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("HomeController - home");
		
		List<MovieVO> movieList = service.mainMovieList();
		System.out.println(movieList);
		model.addAttribute("movieList", movieList);
		
		
		return "cinepick/main/main";
	}
	
	// 깃 테스트
}
