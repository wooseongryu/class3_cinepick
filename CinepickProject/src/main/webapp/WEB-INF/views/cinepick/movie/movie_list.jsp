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

	
	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>


    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-11" style="float: none; margin: 0 auto;">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>
                                            <a style="color: red;">
                                                현재 상영작
                                            </a> 
                                            &nbsp;&nbsp;&nbsp;
                                            <a href="movieListUpComming">
                                                개봉 예정작
                                            </a>
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <select>
                                            <option value="">박스오피스순</option>
                                            <option value="">관람객순</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                	<a href="movieDetail">
	                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
	                                        <div class="ep">1</div>
	                                        <div class="comment">
	                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
	                                        </div>
	                                    </div>
                                    </a>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="movieDetail">오펜하이머</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/popular-2.jpg">
                                        <div class="ep">2</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/15.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">3</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/18.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/popular-4.jpg">
                                        <div class="ep">4</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/all.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Rurouni Kenshin: Meiji Kenkaku Romantan</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/popular-5.jpg">
                                        <div class="ep">5</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Mushishi Zoku Shou 2nd Season</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/popular-6.jpg">
                                        <div class="ep">6</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Monogatari Series: Second Season</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">7</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Great Teacher Onizuka</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">8</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Fate/stay night Movie: Heaven's Feel - II. Lost</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">9</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">10</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Fate/Zero 2nd Season</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">11</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Kizumonogatari II: Nekket su-hen</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">12</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">13</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">14</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">15</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Shingeki no Kyojin Season 3 Part 2</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">16</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Fullmetal Alchemist: Brotherhood</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">17</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Shiratorizawa Gakuen Koukou</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/cinepick/img/post/test1.jpg">
                                        <div class="ep">18</div>
                                        <div class="comment">
                                        	<img src="${pageContext.request.contextPath }/resources/cinepick/img/age/12.png" height="30" class="rating-radius">
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>예매율: 72.3%</li>
                                            <li>개봉일: 2023-08-15</li>
                                        </ul>
                                        <h5><a href="#">Code Geass: Hangyaku no Lelouch R2</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product__pagination">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
			</div>
		</div>
    </section>
	<!-- Product Section End -->

	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>


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