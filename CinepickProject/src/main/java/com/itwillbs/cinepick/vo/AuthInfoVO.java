package com.itwillbs.cinepick.vo;

import lombok.Data;

/*
회원 인증 정보를 관리할 spring_mvc_board3.auth_info 테이블 정의
-------------------------------------------------
아이디(id) - 16글자, PK  =>  참조키 : member.id
인증코드(auth_code) - 50글자, NN
-------------------------------------------------
CREATE TABLE auth_info (
	auth_id VARCHAR(16) PRIMARY KEY,
	auth_code VARCHAR(50) NOT NULL,
	FOREIGN KEY (auth_id) REFERENCES user(id) ON DELETE CASCADE
);
*/

@Data
public class AuthInfoVO {
	private String auth_id;
	private String auth_code;
}












