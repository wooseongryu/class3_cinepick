package com.itwillbs.cinepick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.mapper.BookingMapper;
import com.itwillbs.cinepick.vo.BookVO;
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

	public Map<String, String> selectSchedule(ScheduleVO schedule) {
		System.out.println("BookingService - selectSchedule()");
		return mapper.selectSchedule(schedule);
	}

	public int checkValidCode(int movie_code) {
		System.out.println("BookingService- checkValidCode()");
		return mapper.checkValidCode(movie_code);
	}
	
	// ============================================================
	
//	public int registTicket(String allTickets, String seats) {
//		return mapper.insertTicket(allTickets, seats);
//	}

//	public int registTicket(String allTickets, String seats, int total, int sche_idx) {
//		return mapper.insertTickets(allTickets, seats, total, sche_idx);
//	}

	public int registPay(Map<String, Object> map) {
		return mapper.insertPay(map);
	}
	
	public int registBook(Map<String, Object> map) {
		return mapper.insertBook(map);
	}

//	public String getBookId(Map<String, Object> map) {
//		return mapper.selectBookId(map);
//	}
	
	public BookVO getBook(String bookId) {
		return mapper.selectBook(bookId);
	}

	public int modifySeatList(Map<String, Object> map) {
		return mapper.updateSeatList(map);
	}

//	public int getScheIdx(Map<String, Object> map) {
//		return mapper.selectScheIdx(map);
//	}

//	public int registSeat(Map<String, Object> map) {
//		return mapper.insertSeat(map);
//	}

//	public int modifySeat(Map<String, Object> map) {
//		return mapper.updateSeat(map);
//	}

	public String selectSeatList(int sche_idx) {
		return mapper.selectSeatList(sche_idx);
	}


	public int insertUpdateSeat(Map<String, Object> map) {
		return mapper.insertUpdateSeat(map);
	}
	
}
