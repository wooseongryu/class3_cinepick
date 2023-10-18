package com.itwillbs.cinepick.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
public class UserVO {
	private int uIdx;
	private String uId;
	private String uPasswd1;
	private String uPasswd2;
	private String uName;
	private String uEmail;
	private String uPhone;
	private String uBirth;
	private String uGender;
}








