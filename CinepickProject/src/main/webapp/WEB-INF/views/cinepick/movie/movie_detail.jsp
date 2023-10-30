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
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                <span>1.029 Votes</span>
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
                        <div class="anime__review__item">
<!--                             <div class="anime__review__item__pic"> -->
<%--                                 <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-1.jpg" alt=""> --%>
<!--                             </div> -->
                            <div class="anime__review__item__text">
                                <div class="report">
                                    <a href="#">
                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <h6>유저이름</h6>
                                <h6>
                                    <span>작성시간</span> &nbsp;&nbsp;&nbsp;
                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i></a> 12
                                </h6>
                                <p>리뷰내용</p>
                            </div>
                        </div>
                        <div class="anime__review__item">
                            <div class="anime__review__item__pic">
                                <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-2.jpg" alt="">
                            </div>
                            <div class="anime__review__item__text">
                                <div class="report">
                                    <a href="#">
                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <h6>
                                    Lewis Mann
                                </h6>
                                <h6>
                                    <span>2023.09.29 01:46</span> &nbsp;&nbsp;&nbsp;
                                    <a href="#" class="follow-btn"><i class="fa fa-heart"></i></a> 12
                                </h6>
                                <p>Finally it came out ages ago</p>
                            </div>
                        </div>
                        <div class="anime__review__item">
                            <div class="anime__review__item__pic">
                                <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-3.jpg" alt="">
                            </div>
                            <div class="anime__review__item__text">
                                <div class="report">
                                    <a href="#">
                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <h6>
                                    Louis Tyler
                                </h6>
                                <h6>
                                    <span>2023.09.29 01:46</span> &nbsp;&nbsp;&nbsp;
                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i></a> 12
                                </h6>
                                <p>Where is the episode 15 ? Slow update! Tch</p>
                            </div>
                        </div>
                        <div class="anime__review__item">
                            <div class="anime__review__item__pic">
                                <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-4.jpg" alt="">
                            </div>
                            <div class="anime__review__item__text">
                                <div class="report">
                                    <a href="#">
                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <h6>
                                    Chris Curry
                                </h6>
                                <h6>
                                    <span>2023.09.29 01:46</span> &nbsp;&nbsp;&nbsp;
                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i></a> 12
                                </h6>
                                <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                "demons" LOL</p>
                            </div>
                        </div>
                        <div class="anime__review__item">
                            <div class="anime__review__item__pic">
                                <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-5.jpg" alt="">
                            </div>
                            <div class="anime__review__item__text">
                                <div class="report">
                                    <a href="#">
                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <h6>
                                    Lewis Mann
                                </h6>
                                <h6>
                                    <span>2023.09.29 01:46</span> &nbsp;&nbsp;&nbsp;
                                    <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i></a> 12
                                </h6>
                                <p>Finally it came out ages ago</p>
                            </div>
                        </div>
                        <div class="anime__review__item">
                            <div class="anime__review__item__pic">
                                <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-6.jpg" alt="">
                            </div>
                            <div class="anime__review__item__text">
                                <div class="report">
                                    <a href="#">
                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <h6>
                                    Louis Tyler
                                </h6>
                                <h6>
                                    <span>2023.09.29 01:46</span> &nbsp;&nbsp;&nbsp;
                                    <a href="#" class="follow-btn"><i class="fa fa-heart"></i></a> 12
                                </h6>
                                <p>Where is the episode 15 ? Slow update! Tch</p>
                            </div>
                        </div>
                        <div class="product__pagination">
                            <a href="#"><i class="fa fa-angle-double-left"></i></a>
                            <a href="#" class="current-page">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#">4</a>
                            <a href="#">5</a>
                            <a href="#"><i class="fa fa-angle-double-right"></i></a>
                        </div>
                    </div>
                    <div class="anime__details__form">
                        <div class="section-title">
                            <h5>관람평 작성</h5>
                        </div>
                        <form action="reviewWritePro">
                        	<input type="hidden" value="${movie.movie_code }">
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

</body>

</html>