package com.itwillbs.cinepick.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

import com.itwillbs.cinepick.vo.CityVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.TimeScheduleVO;

@Mapper
public interface TheaterMapper {

	TheaterVO selectTheater(TheaterVO theater);
	List<TheaterVO> selectTheaterList(TheaterVO theater);
	List<CityVO> selectCityList(CityVO city);
	List<TimeScheduleVO> selectSchedule(int brchNo);

}
