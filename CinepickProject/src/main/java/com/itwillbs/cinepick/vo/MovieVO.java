package com.itwillbs.cinepick.vo;

import java.sql.Date;

import lombok.Data;

/*
영화정보를 관리할 spring_mvc_board3.movie 테이블 정의
----> 후에 사용 시 박스오피스테이블과 조인하여 사용!
-------------------------------------------------
1. 영화코드(movie_code)			- 정수, PK
2. 영화제목(movie_nameK)		- 문자열(50), NN
3. 영화제목-영문(movie_nameE)	- 문자열(50)
4. 개봉일(movie_openDt)			- 날짜
5. 상영상태(movie_status)		- 문자열(16), NN
6. 러닝타임(movie_runtime)		- 문자열(16), NN
7. 장르(movie_genre)			- 문자열(50), NN
8. 심의등급(movie_rated)		- 문자열(50), NN
9. 감독(movie_director)			- 문자열(50), NN
10.배우(movie_actor)			- 문자열(1000), NN
11.줄거리(movie_plot)			- 문자열(2000)
12.포스터(movie_poster)			- 문자열(2000)
13.스틸컷(movie_still)			- 문자열(2000)

제약조건 마지막에 수정하기
-------------------------------------------------
CREATE TABLE movie (
	movie_code INT PRIMARY KEY,
	movie_nameK VARCHAR(50) NOT NULL,
	movie_nameE VARCHAR(50),
	movie_openDt DATE NOT NULL,
	movie_status VARCHAR(16) NOT NULL,
	movie_runtime VARCHAR(16) NOT NULL,
	movie_genre VARCHAR(50) NOT NULL,
	movie_rated VARCHAR(50) NOT NULL,
	movie_director VARCHAR(50) NOT NULL,
	movie_actor VARCHAR(1000) NOT NULL,
	movie_plot VARCHAR(2000),
	movie_poster VARCHAR(2000),
	movie_still VARCHAR(2000)
);
*/

@Data
public class MovieVO {
	private int movie_code;
	private String movie_nameK;
	private String movie_nameE;
	private Date movie_openDt;
	private String movie_status;
	private String movie_runtime;
	private String movie_genre;
	private String movie_rated;
	private String movie_director;
	private String movie_actor;
	private String movie_plot;
	private String movie_poster;
	private String movie_still;
}












