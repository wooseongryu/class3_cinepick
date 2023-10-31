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
    <title>로그인</title>

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

<style>
	h4 {
	color: black;
	font-weight: bolder;
	}
</style>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>


    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
        
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>로그인</h3>
                        <form action="loginPro" method="post">
                            <div class="input__item">
                                <input name="user_id" type="text" value="${cookie.cookieId.value }" placeholder="아이디를 입력하세요">
                                <span class="icon_id"></span>
                            </div>
                            <div class="input__item">
                                <input name="user_passwd" type="password" placeholder="비밀번호를 입력하세요">
                                <span class="icon_lock"></span>
                            </div>
                           <input type="checkbox" name="rememberId"
							<c:if test="${not empty cookie.cookieId.value }">checked</c:if>
						><span>&nbsp; 아이디 저장</span><br>
                            <button type="submit" class="site-btn">&nbsp;로그인&nbsp;</button>
                        </form>    
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>아직 회원이 아니신가요?</h3>
                        <a href="join" class="primary-btn">회원가입하기</a>
                    </div>
                    <br>
                    <br>
                 	<div class="login__register">
                        <h4>아이디/비밀번호를 잊으셨나요?</h4>
                        <br>
                        <a href="idSearch" class="primary-btn">&nbsp;&nbsp;아이디찾기&nbsp;</a>
                        <a href="passwdSearch" class="primary-btn">&nbsp;&nbsp;비밀번호찾기&nbsp;</a>
                    </div>
                    
                </div>
            </div>
            
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
<!--                             <span>or</span> -->
<!--                             <ul> -->
<!--                                 <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With -->
<!--                                 Facebook</a></li> -->
<!--                                 <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li> -->
<!--                                 <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a> -->
<!--                                 </li> -->
<!--                             </ul> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->
    
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