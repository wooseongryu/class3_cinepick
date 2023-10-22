package com.itwillbs.cinepick.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.TheaterVO;

@Mapper
public interface TheaterMapper {

	TheaterVO selectTheater(TheaterVO theater);

}
