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
	                        
	                    </div>
	                </div>
	            </div>
	        </div>
                    
                    
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="blog__details__title">
                        <h2>이달의 기획전 <돌비 시네마 스페셜 재개봉></h2>
                        <h6>2023.10.11 ~ 2023.10.15</h6>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="blog__details__content">
                        <img src="${pageContext.request.contextPath }/resources/cinepick/img/event/test1.jpg">
                        
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