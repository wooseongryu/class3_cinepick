package com.itwillbs.cinepick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.mapper.BookingMapper;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.ScheduleVO;
import com.itwillbs.cinepick.vo.TheaterVO;

@Service
public class BookingService {
	@Autowired
	private BookingMapper mapper;

	public List<TheaterVO> selectValidCity(int movie_code) {
		System.out.println("BookingService - selectValidCity()");
		return mapper.selectValidCity(movie_code);
	}

	public List<TheaterVO> selectValidTheater(@RequestParam Map<String, Integer> map) {
		System.out.println("BookingService - selectValidTheater()");
		return mapper.selectValidTheater(map);
	}

	public List<ScheduleVO> selectValidDate(Map<String, Integer> map) {
		System.out.println("BookingService - selectValidDate()");
		return mapper.selectValidDate(map);
	}

	public List<ScheduleVO> selectValidTime(Map<String, Object> map) {
		System.out.println("BookingService - selectValidTime()");
		return mapper.selectValidTime(map);
	}

	public MovieVO selectMovie(int movie_code) {
		System.out.println("BookingService - selectMovie()");
		return mapper.selectMovie(movie_code);
	}

	public List<MovieVO> selectMovies() {
		System.out.println("BookingService - selectMovies()");
		return mapper.selectMovies();
	}

	public int selectSchedule(ScheduleVO schedule) {
		System.out.println("BookingService - selectSchedule()");
		return mapper.selectSchedule(schedule);
	}
	
}
