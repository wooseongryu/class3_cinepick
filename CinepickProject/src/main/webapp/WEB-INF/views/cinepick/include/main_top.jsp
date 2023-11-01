<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	function logout() {
		let result = confirm("로그아웃하시겠습니까?");
		
		if(result) {
			location.href = "Logout";
		}
	}
</script>    
    
<style>
a {
	text-decoration: none;
}

</style>    
<!--     Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/main.css" type="text/css">  

<!--     Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/style.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">

 
 <header class="header">
 	<div class="container">
        <div class="header_right">
			<c:choose>
				<c:when test="${empty sessionScope.sId }">
					<a href="login" class="search-switch">
						<span class="icon_search">로그인</span>
					</a>
					<a href="join">
						<span class="icon_profile">회원가입</span>
					</a>
				</c:when>
				
				<c:otherwise>
					<a href="user?id=${sessionScope.sId }">${sessionScope.sId } 님</a>
					<a href="javascript:logout()">로그아웃</a>
<%-- 					<a href="basket?id=${sessionScope.sId }"> --%>
<!-- 						<span class="icon_profile">장바구니임시버튼</span>  -->
<!-- 					</a> -->
					 
					<c:if test="${sessionScope.sId eq 'admin' }">
						<a href="admin">
							<span class="icon_profile">관리자페이지</span>
						</a>
					</c:if>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div class="col-lg">
			<div class="header_nav">
				<nav class="header_menu">
					<ul>
						<li class="active">
							<a href="movieList">
								영화 <span class="arrow_carrot-down"></span>
							</a>
							 <ul class="dropdown">
	                             <li><a href="movieList">현재상영작</a></li>
	                             <li><a href="movieListUpComming">개봉예정작</a></li>
							</ul>
						</li>	
						<li>
							<a href="bookingStepOne">
								예매 <span class="arrow_carrot-down"></span>
							</a>
							 <ul class="dropdown">
	                             <li><a href="">빠른예매</a></li>
	                             <li><a href="">상영시간표</a></li>
							</ul>
 						</li>
						<li>
							<a href="theater">
								극장 <span class="arrow_carrot-down"></span>
							</a>
							 <ul class="dropdown">
	                             <li><a href="##############################">지역별 극장</a></li>
							</ul>
						</li>
						
						<!-- 메인 로고 -->
						<a href="./">
							<img src="${pageContext.request.contextPath }/resources/cinepick/img/mainlogo.png" alt="">
						</a>
						<!-- 메인 로고 끝 -->
						
						<li>
							<a href="eventMain">
								이벤트 <span class="arrow_carrot-down"></span>
							</a>
							 <ul class="dropdown">
	                             <li><a href="eventList?eventCate_Idx=1">영화</a></li>
	                             <li><a href="eventList?eventCate_Idx=4">시사회/무대인사</a></li>
	                             <li><a href="eventList?eventCate_Idx=5">극장별</a></li>
							</ul>
						</li>	
                        <li>
	                        <a href="storeCategory">
	                        	스토어 <span class="arrow_carrot-down"></span>
	                        </a>
							 <ul class="dropdown">
	                             <li><a href="packageStoreList">패키지</a></li>
	                             <li><a href="snackStoreList">스낵</a></li>
	                             <li><a href="ticketStoreList">관람권/포토카드</a></li>
							</ul>
						</li>	
                        <li>
	                        <a href="qna">
	                        	고객센터 <span class="arrow_carrot-down"></span>
	                        </a>
							 <ul class="dropdown">
	                             <li><a href="notice">공지</a></li>
	                             <li><a href="qna">자주묻는 질문</a></li>
	                             <li><a href="oneToOneQna">1 : 1 문의</a></li>
							</ul>
						</li>	
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>