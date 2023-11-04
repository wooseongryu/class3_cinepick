package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

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

}
