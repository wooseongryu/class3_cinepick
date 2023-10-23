package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.cinepick.vo.MovieVO;

@Mapper
public interface MovieMapper {

	int insertMovie(MovieVO movie);

	void insertBoxoffice(Map<String, Object> map);

	List<MovieVO> selectMovieList();

	MovieVO selectMvDetail(int movie_code);

	int modifyMovie(MovieVO movie);

}
