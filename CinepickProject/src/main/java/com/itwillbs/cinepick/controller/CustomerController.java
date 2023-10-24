package com.itwillbs.cinepick.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.AdminService;
import com.itwillbs.cinepick.service.UserService;
import com.itwillbs.cinepick.vo.MyQuestionVO;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.PageInfoVO;
import com.itwillbs.cinepick.vo.QnaVO;




@Controller
public class CustomerController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService service;
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
	public String qna(Model model) {
		System.out.println("CustomerController - qna");
		
		List<QnaVO> qnaList = adminService.getQna("");
		model.addAttribute("qnaList", qnaList);
		
		return "cinepick/customer/qna";
	}
	
	// 자주 묻는 질문 상세글 보기
	@GetMapping("qnaDetail")
	public String qnaDetail(String qnaIdx , Model model) {
		System.out.println("CustomerController - qnaDetail");
		
		QnaVO qna = adminService.getQna(qnaIdx).get(0);
		
		model.addAttribute("qna", qna);	
		
		
		return "cinepick/customer/qna_detail";
	}
	
	/*====================================================================
	 * 2. 공지사항
	 * ===================================================================
	 * */
	
	// 공지사항 목록
	@GetMapping("notice")
	public String notice(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		System.out.println("CustomerController - notice");
		
		
		int listLimit = 5; // 한 페이지에서 표시할 글 목록 갯수
		
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행(레코드) 번호
		
		List<NoticeVO> noticeList = adminService.getNoticeList(startRow, listLimit);
		
		
		int listCount = adminService.getNoticeListCount();
		
		System.out.println(listCount);
		
		int pageListLimit = 3;
		
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		int endPage = startPage + pageListLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfoVO pageInfo = new PageInfoVO(listCount, pageListLimit, maxPage, startPage, endPage);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "cinepick/customer/notice";
	}
	
	// 공지사항 상세보기
	@GetMapping("noticeDetail")
	public String noticeDetail(String noticeIdx , Model model) {
		System.out.println("CustomerController - notice");
//		System.out.println(noticeIdx);
		
		NoticeVO notice = adminService.getNotice(noticeIdx).get(0);
		
		model.addAttribute("notice", notice);
		
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
	
	
	// 1:1 문의 등록 처리
	@PostMapping("oneToOneQnaPro")
	public String oneToOneQnaPro(HttpSession session, MyQuestionVO myQuestion, Model model) {
		System.out.println("CustomerController - oneToOneQnaPro()");
		
		String sId = (String)session.getAttribute("sId");
		
		if (!sId.equals(myQuestion.getMyQuestion_id())) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
	
		
		int insertCount = service.insertMyQuestion(myQuestion);
		
		if(insertCount > 0) { // 성공
			model.addAttribute("msg", "1:1 문의가 등록되었습니다");
			model.addAttribute("targetURL", "./");
			return "forward";
		} else { // 실패
			model.addAttribute("msg", "1:1 문의 등록 실패");
			return "fail_back";
		}
		
		
		
//		if (insertCount == 0) {
//			model.addAttribute("msg", "작성 실패!");
//			return "fail_back";  
//		}
		
	}
}
