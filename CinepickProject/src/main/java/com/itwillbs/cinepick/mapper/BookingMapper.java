package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.TheaterVO;

@Mapper
public interface BookingMapper {

	List<TheaterVO> selectValidCity(int movie_code);

	List<TheaterVO> selectValidTheater(int movie_code);

}
