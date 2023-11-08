package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.vo.BookVO;
import com.itwillbs.cinepick.vo.MovieVO;
import com.itwillbs.cinepick.vo.ScheduleVO;
import com.itwillbs.cinepick.vo.TheaterVO;

@Mapper
public interface BookingMapper {

	List<TheaterVO> selectValidCity(int movie_code);

	List<TheaterVO> selectValidTheater(@RequestParam Map<String, Integer> map);

	List<ScheduleVO> selectValidDate(Map<String, Integer> map);

	List<ScheduleVO> selectValidTime(Map<String, Object> map);

	MovieVO selectMovie(int movie_code);

	List<MovieVO> selectMovies();

	Map<String, String> selectSchedule(ScheduleVO schedule);

	int checkValidCode(int movie_code);
	
	// ===============================================
	
	int insertTicket(@Param("allTickets") String allTickets, @Param("seats") String seats);

	int insertTickets(@Param("allTickets") String allTickets, @Param("seats") String seats, @Param("total") int total, @Param("sche_idx") int sche_idx);

	int insertPay(Map<String, Object> map);

	int insertBook(Map<String, Object> map);
	
//	String selectBookId(Map<String, Object> map);

	BookVO selectBook(String bookId);

	int insertUpdateSeat(Map<String, Object> map);
	
	int updateSeatList(Map<String, Object> map);

	String selectSeatList(int sche_idx);
	
//	int selectScheIdx(Map<String, Object> map);

//	int insertSeat(Map<String, Object> map);

//	int updateSeat(Map<String, Object> map);



}
