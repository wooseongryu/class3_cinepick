package com.itwillbs.cinepick.vo;

import lombok.Data;

@Data
public class LikeMovieVO {
	private int like_num;
	private String user_id;
	private int movie_code;
	
	
	private int like_count;
	private String movie_poster;
	private String movie_nameK;
	private String movie_status;
	private String book_id;
	
}
