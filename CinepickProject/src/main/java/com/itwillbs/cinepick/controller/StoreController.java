package com.itwillbs.cinepick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.cinepick.service.StoreService;
import com.itwillbs.cinepick.vo.EventVO;
import com.itwillbs.cinepick.vo.PageInfoVO;
import com.itwillbs.cinepick.vo.StoreCateVO;
import com.itwillbs.cinepick.vo.StoreVO;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;

	// 스토어 목록 보기
	@GetMapping("storeCategory")
	public String storeCategory(Model model, @RequestParam(defaultValue = "-1") int storeCate_Idx) {
		System.out.println("StoreController - storeCategory()");
		
		List<StoreVO> storeList = storeService.selectStoreList(storeCate_Idx);
		
		List<StoreCateVO> storeCateList = storeService.selectStoreCateList();
		
		model.addAttribute("storeList", storeList);
		
		model.addAttribute("storeCateList", storeCateList);
		
		
		return "cinepick/event_store/store_category_list";
	}
	
	// 스토어 패키지 상세 목록
	@GetMapping("storeList")
	public String storeList(@RequestParam(defaultValue = "1") int pageNum,
									Model model,
									@RequestParam(defaultValue = "-1") int storeCate_Idx) {
		System.out.println("StoreController - storeList()");
		
		int listLimit = 6; // 한 페이지에서 표시할 글 목록 갯수
		
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행(레코드) 번호
		
		List<StoreVO> storeDetailList = storeService.getStoreDetailList(startRow, listLimit, storeCate_Idx);

		List<StoreCateVO> storeCateList = storeService.selectStoreCateList();
		

		
		int listCount = storeService.getStoreListCount(storeCate_Idx);
		
		int pageListLimit = 3;
		
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		
		int endPage = startPage + pageListLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfoVO pageInfo = new PageInfoVO(listCount, pageListLimit, maxPage, startPage, endPage);
		
		model.addAttribute("storeDetailList", storeDetailList);
		model.addAttribute("storeCateList", storeCateList);
		model.addAttribute("pageInfo", pageInfo);
		
		
//		model.addAttribute("category", "package");
		
		
		return "cinepick/event_store/store_list";
	}
	
	
	
	
	
	// 스토어 스낵 상세 목록
//	@GetMapping("snackStoreList")
//	public String snackStoreList(Model model) {
//		System.out.println("StoreController - snackStoreList()");
//		model.addAttribute("category", "snack");
//		return "cinepick/event_store/store_list";
//	}
//	
//	// 스토어 관람권/포토카드 상세 목록
//	@GetMapping("ticketStoreList")
//	public String ticketStoreList(Model model) {
//		System.out.println("StoreController - ticketStoreList()");
//		model.addAttribute("category", "ticket");
//		return "cinepick/event_store/store_list";
//	}
//	
	
	// 스토어 상세보기
	@GetMapping("storeDetail")
	public String storeDetail(@RequestParam(defaultValue = "-1") String store_idx, 
			Model model) {
		System.out.println("StoreController - storeDetail()");
		
		StoreVO store = storeService.getStore(store_idx).get(0);
		
		model.addAttribute("store", store);
		
		return "cinepick/event_store/store_detail"; 
	}
	
	
	
	
	// 장바구니
//	@GetMapping("basket")
//	public String basket() {
//		System.out.println("StoreController - basket()");
//		return "cinepick/event_store/shopping_basket";
//	}
	
	
}
