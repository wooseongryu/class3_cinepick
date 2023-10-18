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

    <!-- Signup Section Begin -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>회원가입</h3>
                        <form action="joinPro" method="post">
                        	<div class="input__item">
                                <input type="text" name="uId" placeholder="아이디">
                                <span class="icon_id"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uPasswd1" placeholder="비밀번호">
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uPasswd2" placeholder="비밀번호 확인">
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uName" placeholder="이름">
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uEmail" placeholder="이메일 주소">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uPhone" placeholder="휴대폰 번호">
                                <span class="icon_phone"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uBirth" placeholder="생년월일">
                                <span class="icon_calendar"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="uGender" placeholder="성별">
                                <span class="icon_profile"></span>
                            </div>
                            <button type="submit" class="site-btn">회원가입</button>
                        </form>
                        <h5>이미 회원이신가요? <a href="login">로그인하기</a></h5>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__social__links">
                        <h3>Login With:</h3>
                        <ul>
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
                            </li>
                            <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Signup Section End -->


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