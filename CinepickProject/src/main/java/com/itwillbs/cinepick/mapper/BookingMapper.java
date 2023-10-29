package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.vo.TheaterVO;

@Mapper
public interface BookingMapper {

	List<TheaterVO> selectValidCity(int movie_code);

	List<TheaterVO> selectValidTheater(@RequestParam Map<String, Integer> map);

}
