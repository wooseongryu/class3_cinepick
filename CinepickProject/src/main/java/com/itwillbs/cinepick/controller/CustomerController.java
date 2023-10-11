package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {
	@GetMapping("qna")
	public String qna() {
		System.out.println("CustomerController - qna");
		return "cinepick/customer/qna";
	}
	
	@GetMapping("qnaDetail")
	public String qnaDetail() {
		System.out.println("CustomerController - qnaDetail");
		return "cinepick/customer/qna_detail";
	}
	
	@GetMapping("oneToOneQna")
	public String oneToOneQna() {
		System.out.println("CustomerController - oneToOneQna");
		return "cinepick/customer/one_to_one_qna";
	}
	
	@GetMapping("notice")
	public String notice() {
		System.out.println("CustomerController - notice");
		return "cinepick/customer/notice";
	}
	
	@GetMapping("noticeDetail")
	public String noticeDetail() {
		System.out.println("CustomerController - noticeDetail");
		return "cinepick/customer/notice_detail";
	}
}
