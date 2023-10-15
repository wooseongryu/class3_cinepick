package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {
	// 자주 묻는 질문 목록
	@GetMapping("qna")
	public String qna() {
		System.out.println("CustomerController - qna");
		return "cinepick/customer/qna";
	}
	
	// 자주 묻는 질문 상세글 보기
	@GetMapping("qnaDetail")
	public String qnaDetail() {
		System.out.println("CustomerController - qnaDetail");
		return "cinepick/customer/qna_detail";
	}
	
	// 1:1문의 폼
	@GetMapping("oneToOneQna")
	public String oneToOneQna() {
		System.out.println("CustomerController - oneToOneQna");
		return "cinepick/customer/one_to_one_qna";
	}
	
	// 공지사항 목록
	@GetMapping("notice")
	public String notice() {
		System.out.println("CustomerController - notice");
		return "cinepick/customer/notice";
	}
	
	// 공지사항 상세글 보기
	@GetMapping("noticeDetail")
	public String noticeDetail() {
		System.out.println("CustomerController - noticeDetail");
		return "cinepick/customer/notice_detail";
	}
}
