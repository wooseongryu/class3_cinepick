package com.itwillbs.cinepick.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	private int idx;
	private String book_id;
	private int sche_idx;
	private String seat_list;
	private String ticket_type;
	private String user_id;
	private int total_cost;
	private String pay_id;
	private Date book_date;
}
