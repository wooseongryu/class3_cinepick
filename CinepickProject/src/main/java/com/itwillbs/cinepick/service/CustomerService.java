package com.itwillbs.cinepick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.cinepick.mapper.CustomerMapper;
import com.itwillbs.cinepick.vo.NoticeVO;
import com.itwillbs.cinepick.vo.QnaVO;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerMapper mapper;
	
	
	// 공지사항 목록 조회 요청
	public List<NoticeVO> getNoticeList(int startRow, int listLimit) {
		return mapper.selectNoticeList(startRow, listLimit);
	}

	
	// 공지사항 목록 수 요청
	public int getNoticeListCount() {
		return mapper.selectNoticeListCount();
	}

	// 자주 묻는 질문 목록 조회
	public List<QnaVO> getQnaList(int startRow, int listLimit) {
		return mapper.selectQnaList(startRow, listLimit);
	}

	// 자주 묻는 질문 목록 수 조회
	public int getQnaListCount() {
		return mapper.selectQnaListCount();
	}
	

}
