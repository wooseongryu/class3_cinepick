package com.itwillbs.cinepick.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EventVO {
	private int event_idx;
	private String event_title;
	private String event_startDt;
	private String event_endDt;
	private String event_poster;
	
	private MultipartFile event_poster_multi;
	private String event_status;
}
