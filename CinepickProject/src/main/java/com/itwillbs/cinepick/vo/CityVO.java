package com.itwillbs.cinepick.vo;

import lombok.Data;

/*

[연습용]
CREATE TABLE city (
	city_idx INT RIMARY KEY,
	city_name VARCHAR(100)
);

[실전용]
CREATE TABLE city (
	city_idx INT PRIMARY KEY AUTO_INCREMENT,
	city_name VARCHAR(10) NOT NULL
);



 */
@Data
public class CityVO {
	private int city_idx;
	private String city_name;
}
