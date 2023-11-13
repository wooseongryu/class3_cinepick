package com.itwillbs.cinepick.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.MovieMapper;
import com.itwillbs.cinepick.vo.BoxOfficeVO;
import com.itwillbs.cinepick.vo.MovieVO;

@Service
public class MovieService {
	@Autowired
	private MovieMapper movieMapper;

	//영화등록
	
	//중복값 확인
	public int checkedMovie(MovieVO movie) {
		return movieMapper.checkedMovie(movie);
	}
	
	public int insertMovie(MovieVO movie) {
		return movieMapper.insertMovie(movie);
	}


	//관리자영화목록출력
	public List<MovieVO> selectMvList() {
		System.out.println("selectMvList");
		return movieMapper.selectMovieList();
	}

	public MovieVO movieDetail(int movie_code) {
		return movieMapper.selectMvDetail(movie_code);
	}

	public int modifyMovie(MovieVO movie) {
		return movieMapper.modifyMovie(movie);
	}

	public int deleteMovie(int movie_code) {
		int existCount = movieMapper.checkExistSch(movie_code);
		
		if (existCount > 0) {
			return -1;
		}
		
		return movieMapper.deleteMovie(movie_code);
	}
	
	//영화 상영상태 변경
	
	public int updateMovieStatus() {
		return movieMapper.updateMovieStatus();
	}
	
	public int updateMovieStatusFin(int movie_code) {
		return movieMapper.updateMovieStatusFin(movie_code);
	}
	
	
	
	//관리자박스오피스 등록
	public int insertBoxoffice(Map<String, Object> map) {
		return movieMapper.insertBoxoffice(map);
	}


	public int deleteBoxoffice() {
		return movieMapper.deleteBoxoffice();
	}

	public List<BoxOfficeVO> selectMvBOList() {
		return movieMapper.selectBoxoffice();
	}
	
	
	//-----------영화차트페이지---------------

	public List<MovieVO> showMvList(String mvListType) {
		return movieMapper.showMvList(mvListType);
	}

	
	public List<MovieVO> showMvCommingList() {
		return movieMapper.showMVCommingList();
	}
	
	//-----------영화 상세 페이지---------------

	public MovieVO selectMovieDetail(int movie_code) {
		return movieMapper.selectMovieDetail(movie_code);
	}





	


	
}
