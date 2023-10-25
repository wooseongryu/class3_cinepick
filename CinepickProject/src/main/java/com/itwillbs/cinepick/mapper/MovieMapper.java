package com.itwillbs.cinepick.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.cinepick.vo.BoxOfficeVO;
import com.itwillbs.cinepick.vo.MovieVO;

@Mapper
public interface MovieMapper {
	
	//관리자영화
	int checkedMovie(MovieVO movie);

	int insertMovie(MovieVO movie);
	
	List<MovieVO> selectMovieList();
	
	MovieVO selectMvDetail(int movie_code);

	int modifyMovie(MovieVO movie);
	
	int updateMovieStatus();
	
	int deleteMovie(int movie_code);
	
	
	//관리자박스오피스
	int insertBoxoffice(Map<String, Object> map);

	int deleteBoxoffice();

	List<BoxOfficeVO> selectBoxoffice();

	
	
//=========== 영화차트페이지================
	//영화목록
	List<MovieVO> showMvList(@Param("isOpen") boolean isOpen, @Param("mvListType") String mvListType);

	


	

	
}
