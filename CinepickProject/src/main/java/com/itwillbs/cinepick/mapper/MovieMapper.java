package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.MovieVO;

@Mapper
public interface MovieMapper {
	
	int checkedMovie(MovieVO movie);

	int insertMovie(MovieVO movie);
	
	List<MovieVO> selectMovieList();
	
	MovieVO selectMvDetail(int movie_code);

	int modifyMovie(MovieVO movie);

	int deleteMovie(int movie_code);
	
	
	//박스오피스
	int insertBoxoffice(Map<String, Object> map);


	

	
}
