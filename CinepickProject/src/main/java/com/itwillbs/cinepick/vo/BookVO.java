package com.itwillbs.cinepick.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
//	private int idx;
	private String book_id;
	private String movie_nameK;
	private String theater_name;
	private String screen_name;
	private String sche_date;
	private String sche_start_time;
	private String ticket_type;
	private String seat_list;
	private int total_cost;
	// 추가
	private String movie_poster;
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
