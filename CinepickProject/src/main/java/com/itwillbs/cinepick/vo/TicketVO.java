package com.itwillbs.cinepick.vo;

import lombok.Data;

/*

[연습용]
CREATE TABLE ticket (
	ticket_idx INT,
	ticket_type VARCHAR(100),
	ticket_seat VARCHAR(100)
);


[실전용]
CREATE TABLE ticket (
	ticket_idx INT,
	ticket_type VARCHAR(100),
	ticket_seat VARCHAR(100)
);

 */
@Data
public class TicketVO {
	private int ticket_idx;
	private String ticket_type;
	private String ticket_seat;
}
