package com.itwillbs.cinepick.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	int noticeIdx;
	String noticeTitle;
	String noticeContent;
	Date noticeWriteDate;
}
