<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

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
                        <div class="anime__details__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg"></div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>오펜하이머</h3>
                                <span>Oppenheimer</span>
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
                            <p>“나는 이제 죽음이요, 세상의 파괴자가 되었다.”<br>
							세상을 구하기 위해 세상을 파괴할 지도 모르는 선택을 해야 하는 천재 과학자의 핵개발 프로젝트.</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>감독:</span> 크리스토퍼 놀란</li>
                                            <li><span>장르:</span> 스릴러, 드라마</li>
                                            <li><span>개봉일:</span> 2023.08.15</li>
                                            <li><span>관람가:</span> 15세이상</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>출연:</span> 킬리언 머피, 에밀리 블런트, 맷 데이먼...</li>
                                            <li><span>국가:</span> 미국</li>
                                            <li><span>러닝타임:</span> 180분</li>
                                            <li><span>관객수:</span> 318.9만명</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> 찜하기</a>
                                <a href="#" class="watch-btn"><span>예매하기</span> <i
                                    class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
                
            <div class="section-title">
                <h5>트레일러</h5>
            </div>
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <div class="anime__video__player">
                        <video id="player" playsinline controls data-poster="${pageContext.request.contextPath }/resources/cinepick/videos/test1.jpg">
                            <source src="${pageContext.request.contextPath }/resources/cinepick/videos/test1.mp4" type="video/mp4" />
                            <!-- Captions are optional -->
                            <track kind="captions" label="English captions" src="#" srclang="en" default />
                        </video>
                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>
                

            <div class="section-title">
                <h5>스틸컷</h5>
            </div>
            <div class="row">
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="product__item">
	                    <div class="product__sidebar__view__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/cut/test1.jpg">
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="product__item">
	                    <div class="product__sidebar__view__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/cut/test2.jpg">
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="product__item">
	                    <div class="product__sidebar__view__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/cut/test3.jpg">
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="product__item">
	                    <div class="product__sidebar__view__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/cut/test4.jpg">
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="product__item">
	                    <div class="product__sidebar__view__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/cut/test5.jpg">
	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="product__item">
	                    <div class="product__sidebar__view__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/cut/test5.jpg">
	                    </div>
	                </div>
	            </div>
			</div>
                
            <div class="row">
                <div class="col-lg-12 col-md-8">
                    <div class="anime__details__review">
                        <div class="section-title">
                            <h5>관람평</h5>
                        </div>
                        <div class="test" id="order_comment">
                            <h5>
                                <a style="color: red;">최신순</a>
                                 &nbsp;&nbsp;
                                <a href="movieDetail2">공감순</a>
                            </h5>
                        </div>
                        <div class="anime__review__item">
                            <div class="anime__review__item__pic">
                                <img src="${pageContext.request.contextPath }/resources/cinepick/img/profile_pic/review-1.jpg" alt="">
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
                        <form action="#">
                            <textarea placeholder="Your Comment"></textarea>
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