package com.itwillbs.cinepick.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.vo.MyQuestionVO;

@Controller
public class CustomerController {
	
	/*====================================================================
	 * - 목차 -
	 * 1. 자주묻는 질문
	 * 2. 공지사항
	 * 3. 1:1문의
	 * ===================================================================
	 * */
	
	/*====================================================================
	 * 1. 자주묻는 질문
	 * ===================================================================
	 * */
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
	
	/*====================================================================
	 * 2. 공지사항
	 * ===================================================================
	 * */
	
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
	
	
	/*====================================================================
	 * 3. 1:1문의
	 * ===================================================================
	 * */
	
	// 1:1문의 폼
	@GetMapping("oneToOneQna")
	public String oneToOneQna(HttpSession session, Model model) {
		System.out.println("CustomerController - oneToOneQna");
		
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null || sId.equals("")) {
			model.addAttribute("msg", "로그인 후 이용 가능합니다!");
			model.addAttribute("targetURL", "login");
			
			return "forward";
		}
		
		return "cinepick/customer/one_to_one_qna";
	}
	
	@PostMapping("oneToOneQnaPro")
	public String oneToOneQnaPro(HttpSession session, MyQuestionVO question, Model model) {
		System.out.println("CustomerController - oneToOneQnaPro()");
		
		String sId = (String)session.getAttribute("sId");
		
		if (!sId.equals(question.getMyQuestion_id())) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		// 유저 컨트롤러에서 기능 만들면 가져와야됨.
//		int insertCount = 0;
		
//		if (insertCount == 0) {
//			model.addAttribute("msg", "작성 실패!");
//			return "fail_back";  
//		}
		
		return "";
	}
}
