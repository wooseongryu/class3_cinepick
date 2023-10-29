package com.itwillbs.cinepick.vo;

import lombok.Data;

/*

theater 테이블 정의

번호(idx)

[연습용]
CREATE TABLE theater (
	theater_idx INT,
	city_idx INT,
	theater_name VARCHAR(100),
	theater_title varchar(500),
	theater_address VARCHAR(200),
	FOREIGN KEY(city_idx) REFERENCES city(city_idx)
);


[실전용]
CREATE TABLE theater (
	theater_idx INT PRIMARY KEY AUTO_INCREMENT,
	city_idx INT,
	theater_name VARCHAR(100),
	theater_title varchar(500),
	theater_address VARCHAR(200),
	FOREIGN KEY(city_idx) REFERENCES city(city_idx)
);
 
 

 */
@Data
public class TheaterVO {
	private int theater_idx;
	private int brchNo;
	private int city_idx;
	private String theater_name;
	private String theater_title;
	private String theater_address;
	private String theater_facility1;
	private String theater_facility2;
	private String theater_facility3;
	private String theater_facility4;
	
	private String city_name;
}
