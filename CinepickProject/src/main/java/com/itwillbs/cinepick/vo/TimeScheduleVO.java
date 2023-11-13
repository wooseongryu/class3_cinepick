package com.itwillbs.cinepick.vo;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class TimeScheduleVO {
	private int city_idx;
	private int theater_idx;
	private String theater_name;
	private int brchNo;
	private int screen_idx;
	private String screen_name;
	private int movie_code;
	private String movie_nameK;
	private String movie_runtime;
	private String movie_rated;
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate sche_date;
//	private String sche_date;
	private String sche_start_time;
	private String sche_end_time;
	private String screen_total_seat;
}
//@Data
//public class BookVO {
//	private int idx;
//	private String book_id;
//	private int sche_idx;
//	private String seat_list;
//	private String ticket_type;
//	private String user_id;
//	private int total_cost;
//	private String pay_id;
//	private Date book_date;
//}
