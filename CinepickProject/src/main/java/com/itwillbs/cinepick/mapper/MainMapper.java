package com.itwillbs.cinepick.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.MovieVO;

@Mapper
public interface MainMapper {

	List<MovieVO> mainMovieList();
	
}
