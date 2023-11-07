package com.itwillbs.cinepick.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class StoreVO {
	private int store_idx;
	private String store_short;
	private String store_title;
	private String store_price;
	private String store_thumbnail;
	private int store_category;
	
	private MultipartFile store_thumbnail_multi;
	

	private String storeCate_Subject;


}
