package com.itwillbs.cinepick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreController {
	// 스토어 목록 보기
	@GetMapping("storeCategory")
	public String storeCategory() {
		System.out.println("StoreController - storeCategory()");
		return "cinepick/event_store/store_category_list";
	}
	
	// 스토어 패키지 상세 목록
	@GetMapping("packageStoreList")
	public String packageStoreList(Model model) {
		System.out.println("StoreController - packageStoreList()");
		model.addAttribute("category", "package");
		return "cinepick/event_store/store_list";
	}
	
	// 스토어 스낵 상세 목록
	@GetMapping("snackStoreList")
	public String snackStoreList(Model model) {
		System.out.println("StoreController - snackStoreList()");
		model.addAttribute("category", "snack");
		return "cinepick/event_store/store_list";
	}
	
	// 스토어 관람권/포토카드 상세 목록
	@GetMapping("ticketStoreList")
	public String ticketStoreList(Model model) {
		System.out.println("StoreController - ticketStoreList()");
		model.addAttribute("category", "ticket");
		return "cinepick/event_store/store_list";
	}
	
	// 스토어 상세보기
	@GetMapping("storeDetail")
	public String storeDetail() {
		System.out.println("StoreController - storeDetail()");
		return "cinepick/event_store/store_detail"; 
	}
	
	// 장바구니
	@GetMapping("basket")
	public String basket() {
		System.out.println("StoreController - basket()");
		return "cinepick/event_store/shopping_basket";
	}
}
