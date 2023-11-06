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
                        <h3>아이디 찾기 결과</h3>
						<c:choose>
							<c:when test="${empty user}">
							<p class="inquiry">조회결과가 없습니다.</p>
							</c:when>
					        <c:otherwise>
					            <h6 style="color: #1c1c1c">${user.user_id}</h6>
					        </c:otherwise>
						</c:choose>
					<div class="login__register">
                        <a href="login" class="primary-btn" >&nbsp;&nbsp;로그인 화면으로&nbsp;</a>
					</div>
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="login__register">
                        <h4>아직 회원이 아니신가요?</h4>
                        <br>
                        <a href="join" class="primary-btn">회원가입하기</a>
                    </div>
                    <br>
                    <br>
                 	<div class="login__register">
                        <h4>비밀번호를 잊으셨나요?</h4>
                        <br>
                        <a href="passwdSearch" class="primary-btn" >&nbsp;&nbsp;비밀번호찾기&nbsp;</a>
                    </div>
                    
                </div>
            </div>
            
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
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