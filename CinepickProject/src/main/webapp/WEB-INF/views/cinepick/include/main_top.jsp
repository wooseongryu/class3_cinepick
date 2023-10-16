<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
a {
	text-decoration: none;
}

</style>    
 
 <header class="header">
 	<div class="container">
 	
        <div class="header_right">
			<a href="login" class="search-switch">
				<span class="icon_search">로그인</span>
			</a>
			<a href="join">
				<span class="icon_profile">회원가입</span>
			</a>
			
			<!-- 임시 코드 -->
			<a href="admin">
				<span class="icon_profile">관리자임시버튼</span>
			</a>
			<a href="user">
				<span class="icon_profile">유저임시버튼</span>
			</a>
			<a href="basket">
				<span class="icon_profile">장바구니임시버튼</span>
			</a>
			<!-- 임시 코드 끝 -->
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
							<a href="eventCategory">
								이벤트 <span class="arrow_carrot-down"></span>
							</a>
							 <ul class="dropdown">
	                             <li><a href="">진행 중인 이벤트</a></li>
	                             <li><a href="">종료된 이벤트</a></li>
	                             <li><a href="">당첨자 조회</a></li>
	                             <li><a href="">제휴할인</a></li>
	                             <li><a href="">시사회목록</a></li>
							</ul>
						</li>	
                        <li>
	                        <a href="storeCategory">
	                        	스토어 <span class="arrow_carrot-down"></span>
	                        </a>
							 <ul class="dropdown">
	                             <li><a href="">상품구매</a></li>
	                             <li><a href="">관람권</a></li>
	                             <li><a href="">스낵</a></li>
	                             <li><a href="">금액권</a></li>
	                             <li><a href="">포인트몰</a></li>
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