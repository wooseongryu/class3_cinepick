package com.itwillbs.cinepick.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

public interface LikeMovieMapper {

	int insertLikeBtn(@Param("user_id")String user_id,@Param("movie_code") int movie_code);

	int deleteLikeBtn(@Param("user_id")String user_id,@Param("movie_code") int movie_code);


}
