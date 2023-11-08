package com.itwillbs.cinepick.vo;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ScheduleVO {
	private int sche_idx;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate sche_date;
	
	@DateTimeFormat(pattern = "HH:mm:ss")
	private LocalTime sche_start_time;
	
	private LocalTime sche_end_time;
	private int sche_movie_code;
	private int sche_screen_idx;
	private int sche_theater_idx;
	
	private String movie_nameK;
	private String theater_name;
	private String screen_name;
	
	private int screenCount;
	private int remainSeatCount;
}
