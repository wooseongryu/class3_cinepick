package com.itwillbs.cinepick.vo;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/* 
 * review_num int 				- auto
 * review_rating int
 * review_content varchar(1000)
 * review_date date				- now()
 * movie_code int 				- hidden
 * user_id varchar(16) 			- 세션아이디
 * 
 * 
 */

@Data
public class ReviewVO {
	private int review_num;
	private int review_rating;
	private String review_content;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate review_date;
	
	private int movie_code;
	private String user_id;
}
