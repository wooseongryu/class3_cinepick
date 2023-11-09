package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.TheaterMapper;
import com.itwillbs.cinepick.vo.CityVO;
import com.itwillbs.cinepick.vo.TheaterVO;
import com.itwillbs.cinepick.vo.TimeScheduleVO;

@Service
public class TheaterService {
	
	@Autowired
	private TheaterMapper mapper;

	public TheaterVO getTheater(TheaterVO theater) {
		return mapper.selectTheater(theater);
	}
	public List<TheaterVO> getBranch(TheaterVO theater) {
		return mapper.selectTheaterList(theater);
	}
	public List<CityVO> getCity(CityVO city) {
		return mapper.selectCityList(city);
	}
	public List<TimeScheduleVO> getSchedule(int brchNo) {
		return mapper.selectSchedule(brchNo);
	}

}
