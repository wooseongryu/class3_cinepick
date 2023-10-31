<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>영화 상세 페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/style.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
	<style>
		#reviewForm fieldset{
		    display: inline-block;
		    direction: rtl;
		    border:0;
		}
		#reviewForm fieldset legend{
		    text-align: right;
		}
		#reviewForm input[type=radio]{
		    display: none;
		}
		#reviewForm label{
		    font-size: 3em;
		    color: transparent;
		    text-shadow: 0 0 0 #f0f0f0;
		}
		#reviewForm label:hover{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		#reviewForm label:hover ~ label{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		#reviewForm input[type=radio]:checked ~ label{
		    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
		}
		
		.reviewStarMin {
		   position: relative;
		    display: inline-block;
		   width: 90px;
		    height: 15px;
		    background-position: 0;
		    background-repeat: no-repeat;
		    background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_min.png");
		}
		
		.reviewStarMin .bg_star {
		   width: 90px;
		    height: 15px;
		    background-position: 0;
		    background-repeat: no-repeat;
		    background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_min_on.png");
		}
		
		.reviewStarMax {
		   position: relative;
		    display: inline-block;
		   width: 175px;
		    height: 30px;
		    background-position: 0;
		    background-repeat: no-repeat;
		   background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_max.png");
		}
		
		.bg_star{
		   position: absolute;
		    top: 0;
		    left: 0;
		    overflow: hidden;
		}
		
		.reviewStarMax .bg_star{
		   width: 175px;
		    height: 30px;
		    background-position: 0;
		    background-repeat: no-repeat;
		   background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_max_on.png");
		}
		
	</style>

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>
    <!-- Header End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="${movie.movie_poster }"></div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${movie.movie_nameK }</h3>
                                <span>${movie.movie_nameE }</span>
                            </div>
                            <div class="anime__details__rating">
                                <div class="reviewStarMax">
								   <div class="bg_star" style="width: ${movie.movie_avg * 20 }%;"></div>
								</div>
                                <span>${movie.movie_avg } / 5.0</span>
                            </div>
                            <p>${movie.movie_plot }</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>감독:</span>${movie.movie_director }</li>
                                            <li><span>장르:</span>${movie.movie_genre }</li>
                                            <li><span>관람가:</span>${movie.movie_rated }</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>개봉일:</span>${movie.movie_openDt }</li>
                                            <li><span>러닝타임:</span>${movie.movie_runtime }</li>
<%--                                             <li><span>관객수:</span> ${movie.movie_audi }</li> --%>
                                        </ul>
                                    </div>
                                    <div class="col-lg-12 col-md-6">
                                        <ul>
                                            <li id="actors-list"><span>출연:</span>${movie.movie_actor }</li>
                                        </ul>
                                    </div>
                                </div>
	                            <div class="anime__details__btn">
	<!--                                 <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> 찜하기</a> -->
	                                <a href="getCityList?movie_code=${movie.movie_code }" class="follow-btn"><span>예매하기</span></a>
	                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
                
            <c:if test="${!empty movie.movie_vod }">
	            <div class="section-title">
	                <h5>트레일러</h5>
	            </div>
	            <div class="row">
	                <div class="col-lg-1"></div>
	                <div class="col-lg-10">
	                    <div class="anime__video__player" style="text-align: center">
	<%--                     	<iframe width="560" height="315" src="${movie.movie_vod }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> --%>
	                        <video id="player" playsinline controls>
	                            <source src="${movie.movie_vod }" type="video/mp4" />
	<!--                             <track kind="captions" label="English captions" src="#" srclang="en" default /> -->
	                        </video>
	                    </div>
	                </div>
	                <div class="col-lg-1"></div>
	            </div>
            </c:if>
            <div class="section-title">
                <h5>스틸컷</h5>
            </div>
            <div class="row">
            	<c:forEach var="movie_still" items="${movie.movie_stills }" begin="0" end="5">
		            <div class="col-lg-4 col-md-6 col-sm-6">
		                <div class="product__item">
		                    <div class="product__sidebar__view__item set-bg" data-setbg="${movie_still }">
		                    </div>
		                </div>
		            </div>
            	</c:forEach>
            </div>    
            <div class="row">
                <div class="col-lg-12 col-md-8">
                    <div class="anime__details__review" style="align-items: center;">
                        <div class="section-title">
                            <h5>관람평</h5>
                        </div>
                        <div class="test" id="order_comment">
                            <h5>
                                <a style="color: red;">최신순</a>
                                 &nbsp;&nbsp;
<!--                                 <a href="movieDetail2">공감순</a> -->
                            </h5>
                        </div>
						<c:forEach var="review" items="${review }">
	                        <div class="anime__review__item">
	                            <div class="anime__review__item__text" style="margin: auto;">
	                                <h6>
	                                	<span>${review.user_id }</span>
<%-- 	                                	<c:if test=""> --%>
		                                	<span><input type="button" value="수정" id="rvModify" onclick="rvModify('${review.user_id }', ${review.movie_code })"></span>
		                                	<span><input type="button" value="삭제" id="rvDelete" onclick="rvDelete('${review.user_id }', ${review.movie_code },${review.review_num })"></span>
<%-- 	                                	</c:if> --%>
	                                </h6>
	                            	<div class="reviewStarMin">
									   <div class="bg_star" style="width: ${review.review_rating * 20 }%;"></div>
									</div>
	                                <h6>
	                                    <span>${review.review_date }</span> &nbsp;&nbsp;&nbsp;
	                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i></a> 12
	                                </h6>
	                                <p>${review.review_content }</p>
	                            </div>
	                        </div>
						</c:forEach>
<!--                         <div class="product__pagination"> -->
<!--                             <a href="#"><i class="fa fa-angle-double-left"></i></a> -->
<!--                             <a href="#" class="current-page">1</a> -->
<!--                             <a href="#">2</a> -->
<!--                             <a href="#">3</a> -->
<!--                             <a href="#">4</a> -->
<!--                             <a href="#">5</a> -->
<!--                             <a href="#"><i class="fa fa-angle-double-right"></i></a> -->
<!--                         </div> -->
                    </div>
                    <div class="anime__details__form">
                        <div class="section-title">
                            <h5>관람평 작성</h5>
                        </div>
                        <form action="reviewWritePro" id="reviewForm">
                       		<fieldset>
<!-- 								<span class="text-bold">별점을 선택해주세요</span> -->
								<input type="radio" name="review_rating" value="5" id="rate1">
								<label for="rate1">★</label>
								<input type="radio" name="review_rating" value="4" id="rate2">
								<label for="rate2">★</label>
								<input type="radio" name="review_rating" value="3" id="rate3">
								<label for="rate3">★</label>
								<input type="radio" name="review_rating" value="2" id="rate4">
								<label for="rate4">★</label>
								<input type="radio" name="review_rating" value="1" id="rate5">
								<label for="rate5">★</label>
							</fieldset>
                        	<input type="hidden" value="${movie.movie_code }" name="movie_code">
                            <textarea placeholder="리뷰를 작성해 주세요." name="review_content"></textarea>
                            <button type="submit"><i class="fa fa-location-arrow"></i> 등록</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Anime Section End -->

	<!-- Footer Section Begin -->
	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>
	<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	
	<script>
		function rvModify(user_id, movie_code) {
			
		}	
		function rvDelete(user_id, movie_code, review_num) {
			console.log(user_id);
			
			 let result = confirm("리뷰를 삭제하시겠습니까?");
			 if(result) {
				 location.href="ReviewDelete?movie_code=" + movie_code + "&user_id=" + user_id + "&review_num=" + review_num;
			 }
			 
			 
		}	
	
	</script>

</body>

</html>