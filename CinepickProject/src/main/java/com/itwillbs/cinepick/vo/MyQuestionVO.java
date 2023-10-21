package com.itwillbs.cinepick.vo;


import java.util.Date;

import lombok.Data;
/*
CREATE TABLE myQuestion (
	myQuestion_num INT PRIMARY KEY AUTO_INCREMENT,
	myQuestion_subject VARCHAR(50) NOT NULL,
	myQuestion_content VARCHAR(2000) NOT NULL,
	myQuestion_date DATETIME NOT NULL
);
 * */
@Data
public class MyQuestionVO {
	private int myQuestion_num;
	private String myQuestion_subject;
	private String myQuestion_content;
	private Date myQuestion_date;
}



















