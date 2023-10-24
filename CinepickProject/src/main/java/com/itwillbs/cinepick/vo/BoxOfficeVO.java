package com.itwillbs.cinepick.vo;

import lombok.Data;

/*
 CREATE TABLE  movie_boxoffice(
	movie_code INT PRIMARY KEY,
	movie_name VARCHAR(50) NOT NULL,
	movie_rank INT NOT NULL,
	movie_audi INT NOT NULL,
);
 */
@Data
public class BoxOfficeVO {
	private int movie_rank;
	private int movie_code;
	private String movie_name;
	private int movie_audi;
}
