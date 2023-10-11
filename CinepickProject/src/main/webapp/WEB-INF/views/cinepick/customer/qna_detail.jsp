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

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
        
        	<div class="row">
	            <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h5>고객센터</h5>
	                    </div>
	                    <div class="test" id="order_comment">
	                        <h5>
	                            <a href="qna" style="color: red;">자주묻는질문</a>
	                             &nbsp;&nbsp;
	                            <a href="notice">공지사항</a>
	                             &nbsp;&nbsp;
	                            <a href="oneToOneQna">1:1문의</a>
	                        </h5>
	                    </div>
	                </div>
	            </div>
	        </div>
        
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="blog__details__title">
                        <h6>영화관 이용</h6>
                        <h2>영화 경품(굿즈) 수량 확인은 어떻게 하나요?</h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="blog__details__content">
                        <div class="blog__details__text">
                            <p>· 각 영화 경품(굿즈) 증정 이벤트 페이지 하단 [잔여수량확인] 탭을 통해 확인 가능합니다.</p>
                        </div>
                        <div class="blog__details__text">
                            <p>- [홈페이지/모바일] > [이벤트] > [영화] > 이벤트페이지 클릭 후 하단의 [잔여수량확인] 탭 확인</p>
                        </div>
                        <div class="blog__details__text">
                            <p>· 영화 경품(굿즈) 증정 이벤트를 진행하는 영화관에 한해 조회가 가능합니다.</p>
                        </div>
                        <div class="blog__details__text">
                            <p>· 이벤트 페이지를 통해 확인한 영화 경품(굿즈) 잔여수량은 현장 방문시점과 상이할 수 있습니다.</p>
                        </div>
                        <div class="blog__details__btns">
                            <div class="row">
                            	<div class="col-1">
                                    <div class="blog__details__btns__item">
                                        <h5>
                                        	<a href="#">
	                                        	<span class="arrow_left"></span>
	                                        </a>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-5">
                                    <div class="blog__details__btns__item">
                                        <h5>
                                        	<a href="#">
	                                        	 카드로 결제할 경우 환불은 언제 되나요?
                                        	</a>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-5">
                                    <div class="blog__details__btns__item next__btn">
                                        <h5>
                                        	<a href="#">
	                                        	국가유공자 할인은 어떻게 받나요? 
                                        	</a>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-1">
                                    <div class="blog__details__btns__item">
                                        <h5>
                                        	<a href="#">
	                                        	<span class="arrow_right"></span>
	                                        </a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                       	</div>
                   	</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

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