<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>
	<%-- 외부 CSS 파일(css/default.css) 불러오기 --%>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
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
<script type="text/javascript">
	$(function() {
		// 1. 아이디 입력창 체크
		$("#user_id").blur(function() {
			let id = $("#user_id").val();
			let msg = "";
			let color = "";
			
			if(id == "") {
				msg = "아이디 입력 필수!";
				color = "red";
			} else if(id.length < 4 || id.length > 8) {
				// 정규표현식을 활용한 아이디 입력값 검증
				msg = "4 ~ 8글자 필수!";
				color = "red";
			} else {
				// 아이디 중복 검사를 위한 AJAX 활용 요청
// 				else if(id == "admin") {
// 					msg = "사용 불가능한 아이디!";
// 					color = "red";
// 				} else {
// 					msg = "사용 가능한 아이디!";
// 					color = "green";
// 				}
			}
			
			// 텍스트와 글자색상 변수를 활용하여 상태 변경
			$("#checkIdResult").html(msg);
			$("#checkIdResult").css("color", color);
			
		});
		
		// 2. 비밀번호 입력창 체크
		$("#user_passwd").blur(function() {
			let passwd = $("#user_passwd").val();
			let msg = "";
			let color = "";
			
			if(passwd == "") {
				msg = "비밀번호 입력 필수!";
				color = "red";
			} else if(passwd.length < 4 || passwd.length > 16) {
				// 정규표현식을 활용한 패스워드 입력값 검증
				msg = "4 ~ 16글자 필수!";
				color = "red";
			} else {
				msg = "사용 가능한 비밀번호!";
				color = "green";
			}
			
			// 텍스트와 글자색상 변수를 활용하여 상태 변경
			$("#checkPasswdResult").html(msg);
			$("#checkPasswdResult").css("color", color);
		});
		
		// 3. 비밀번호 확인 입력창 체크
		$("#user_passwd2").blur(function() {
			let passwd = $("#user_passwd").val();
			let passwd2 = $("#user_passwd2").val();
			
			let msg = "";
			let color = "";
			
			if(passwd2 == "") {
				msg = "비밀번호 확인 입력 필수!";
				color = "red";
			} else if(passwd != passwd2) {
				msg = "비밀번호 불일치!";
				color = "red";
			} else {
				msg = "비밀번호 일치!";
				color = "green";
			}
			
			// 텍스트와 글자색상 변수를 활용하여 상태 변경
			$("#checkPasswdResult2").html(msg);
			$("#checkPasswdResult2").css("color", color);
		});
		
		// 4. 휴대폰번호 11자리 입력 
		$("#user_phone").keyup(function() {
			if($("#user_phone").val().length == 11) {
				$("#user_birth").focus();
			}
		});

		// 5. 생년월일 6자리 입력 
		$("#user_birth").keyup(function() {
			if($("#user_birth").val().length == 6) {
				$("#user_gender").focus();
			}
		});

		// 6. 성별 1자리 입력후 블러처리
		$("#user_gender").keyup(function() {
			if($("#user_gender").val().length == 1) {
				$("#user_gender").blur();
			}
		});
		
		
	}); // document.ready 이벤트 끝
</script>
<style>
	.row {
		margin-left: 16% 
	}

	.signup .login__form:after {
		height: 0px;
	}

</style>

<script>
	//휴대폰번호 입력 가능한 수 maxlength(11자리) 설정
	function maxLengthCheck(object){
	    if (object.value.length > object.maxLength){
	        object.value = object.value.slice(0, object.maxLength);
	    }
	}
	
	//휴대폰번호 입력칸에 오로지 숫자만 입력 되도록 설정
	function onlynumberic(event) {
	    event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
	</script>

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
                                <input type="text" name="user_name" id="user_name" required="required" size="20" placeholder="이름을 입력하세요">
                                <span class="icon_profile"></span>
                            </div>
                            <div>
                            	<span id="checkIdResult"></span>
                            </div>
                        	<div class="input__item">
                               <input type="text" name="user_id" id="user_id" placeholder="아이디 4 ~ 8글자 사이 입력" required="required" size="20">
                                <span class="icon_id"></span>
                            </div>
                            <div>
                            	<span id="checkPasswdResult"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" name="user_passwd" id="user_passwd" placeholder="비밀번호 4 ~ 16글자 사이 입력" required="required" size="20">
                                <span id = "checkIdResult"></span>
                                <span class="icon_lock"></span>
                            </div>
                            <div>
                            	<span id="checkPasswdResult2"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" name="user_passwd2" id="user_passwd2" placeholder="비밀번호 확인">
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="user_email" id ="user_email" placeholder="이메일 주소">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="number" name="user_phone" id="user_phone" placeholder="휴대폰 번호('-'을 제외)" maxlength="11" oninput="maxLengthCheck(this)" onkeyup="onlynumberic(event)">
                                <span class="icon_phone"></span>
                            </div>
                             
<!--                             <div class="input__item"> -->
<!--                                 <input type="text" name="user_birth" id="user_birth" placeholder="생년월일(6자리입력)"> -->
<!--                                 <span class="icon_calendar"></span> -->
<!--                             </div> -->
<!--                             <div class="input__item"> -->
<!--                                 <input type="text" name="user_gender" id="user_gender" placeholder="성별(남자 : M 또는 여자 : F 입력)"> -->
<!--                                 <span class="icon_profile"></span> -->
<!--                             </div> -->
                            <button type="submit" class="site-btn">회원가입</button>
                        </form>
                        <h5>이미 회원이신가요? <a href="login">로그인하기</a></h5>
                    </div>
                </div>
<!--                 <div class="col-lg-6"> -->
<!--                     <div class="login__social__links"> -->
<!--                         <h3>Login With:</h3> -->
<!--                         <ul> -->
<!--                             <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a> -->
<!--                             </li> -->
<!--                             <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li> -->
<!--                             <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </div> -->
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