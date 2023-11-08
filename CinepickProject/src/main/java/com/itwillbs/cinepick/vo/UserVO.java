package com.itwillbs.cinepick.vo;

import java.sql.Date;

import lombok.Data;
/*
CREATE TABLE user (
	 	user_idx INT PRIMARY KEY AUTO_INCREMENT,
	 	user_name VARCHAR(10) NOT NULL,
	 	user_id VARCHAR(16) NOT NULL UNIQUE,
	 	user_passwd VARCHAR(100) NOT NULL,
	 	user_birth VARCHAR(6) NOT NULL,
	 	user_email VARCHAR(50) NOT NULL UNIQUE,
	 	user_phone VARCHAR(50) NOT NULL,
	 	user_gender VARCHAR(1) NOT NULL,
	 	hire_date DATE NOT NULL,
	 	mail_auth_status CHAR(1) NOT NULL
	);
*/


@Data
public class UserVO {
	private int user_idx;
	private String user_name;
	private String user_id;
	private String user_passwd;
	private String user_email;
	private String user_phone;
//	private String user_birth;
//	private String user_gender;
	private Date hire_date;
	private String user_is_admin;
	private String mail_auth_status; // 이메일 인증 여부("Y" : 인증, "N" : 미인증)
	private String kakao_id;
	private String user_status; // 가입, 탈퇴
}

