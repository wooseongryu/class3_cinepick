<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- JSTL 에서 제공하는 각종 함수 라이브러리 : functions --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

	 <!-- 회원 탈퇴 css -->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/member_out.css" rel="stylesheet">
	<style>
		a:hover {
			text-decoration: none;
		}
		
		.categoryMenu a {
		    margin: 20px;
		}
		.categoryMenu {
		    border-top: 1px solid;
		    padding: 10px;
		}
		.likeMovieListAll{
			display: flex;
		    margin: auto;
		    justify-content: center;
		}
		
		
		
		.likeMovieList {
			margin: 0 -15px;
			overflow: hidden;
			list-style: none;
		}
		.likeMovie {
		    display: flex;
		    flex-direction: column;
		    width: 300px;
		    padding-inline: 10px;
		    margin-block: 30px;
			list-style:none;
			align-items: center;
		}
		
		.likeMovie img {
			width: 190px;
			height: 280px;
			border-radius: 4px;
		}
		
		.likeMovieListLi {
			float:left
		} 
		.likeMovieListLi:nth-of-type(4n-3){display:block;content:"";clear:left;}
		
		.movieClick {
 			text-align: center;
		}
		
		.likeMvBtn {
			border: none;
			background: #ffffff;
			color: #503396;
			text-align: center;
			font-size: 20px;
		}
		
		.bookBtn {
			border: 1px solid #503396;
			width: 100px;
			text-align: center;
			color: #503396;
			padding: 5px;
			
		}
		
		.bookBtnFalse {
			border: 1px solid #c7c7c7;
			width: 100px;
			text-align: center;
			color: #c7c7c7;
			padding: 5px;
		}
		
		.bookBtn:hover {
			text-decoration: none;
		}
		
		.bookBtnFalse:hover {
			color: #c7c7c7;
			text-decoration: none;
			cursor: pointer;
		}
		
		.noticeZone {
			display: block;
			height: 400px;
			text-align: center;
		}
		
		#movieComplete {
			width: 100px;
			height: 50px;
			position: relative;
		    display: inline-block;
			background-position: 0;
		    background-repeat: no-repeat;
			background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/booking.png");
			background-size: 100px 100px;
			
		}
		
		
	</style>
	<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	<script>
		$(function() {
			$("button[name='likeMovieBtnList']").click(function() {
				let user_id = "${sessionScope.sId}";
				if(user_id == null || user_id == "") {
					alert("로그인시 이용가능한 기능입니다.");
					return;
				} 
				let movie_code = $(this).closest("div").data("movie_code")+"";
				let movie_name = $(this).closest("div").data("movie_name")+"";
				console.log(movie_code);
				console.log(user_id);
				
				$.ajax({
					url: "userLikeMovieDelete",
					type: "get",
					data: {
						"user_id": user_id,
						"movie_code": movie_code,
					},
					dataType: "json",
					success: function (result) {
// 						alert(result);
						if(result > 0) {
							alert("< " + movie_name + " > 찜이 해제되었습니다.");
							location.reload();
							
						} else{
							alert("이미 해제한 영화입니다.");
						}
					},
					error: function() {
						alert("찜해제가 오류남");
					}
					
					
				});
				
			});
			
			
			
			
			
		});
		
		
	</script>
</head>

<body id="page-top">

    <header>
		<jsp:include page="../../cinepick/include/main_top.jsp"></jsp:include>
	</header>

    <!-- Page Wrapper -->
    <div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="user_sidebar.jsp"></jsp:include>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>


                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope.sId }님</span>
                                <img class="img-profile rounded-circle"
                                    src="${pageContext.request.contextPath }/resources/mypage/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="userUpdate?id=${sessionScope.sId }">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
<!--                                 <a class="dropdown-item" href="#"> -->
<!--                                     <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> -->
<!--                                     Settings -->
<!--                                 </a> -->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">찜한 영화</h1>
                    <p class="mb-4">찜한 영화 한눈에 보기</p>

                    <!-- DataTales Example -->
					<c:if test="${empty likeList }">
						<div class="noticeZone">
							<h5> 찜한 영화가 없습니다.</h5>
							<br>
							<a href="movieList" class="bookBtn">찜하러 가기</a>
						</div>
					</c:if>
                    <div class="card shadow mb-4">
                    	<div class="likeMovieListAll"> 
							<ul class="likeMovieList">
								<c:forEach var="like" items="${likeList }">
									<li class="likeMovieListLi">
										<div class="likeMovie" data-movie_code="${like.movie_code }" data-movie_name="${like.movie_nameK }">
											<a class="movieClick" href="movieDetail?movie_code=${like.movie_code }">
												<img src="${like.movie_poster }"><br>
												<strong>${like.movie_nameK }</strong>
<%-- 												<strong><span>${product.product_price }</span><span>원</span></strong> --%>
				<%-- 								<strong>${product.product_info }</strong> --%>
											</a>
											<input type="hidden" id="clickCheck">
											<button class="likeMvBtn" id="likeMovie${like.movie_code }" name="likeMovieBtnList">♥</button>
<%-- 											<span id="movieComplete">${like.book_id }</span> --%>
											<c:choose>
												<c:when test="${like.movie_status eq '상영종료' }">
													<a class="bookBtnFalse">상영종료</a>
												</c:when>
												<c:otherwise>
													<a href="bookingStepOne?movie_code=${like.movie_code }" class="bookBtn">예매하기</a>
												</c:otherwise>
											</c:choose>
											<c:if test="${like.book_id > 0}"><span id="movieComplete"></span><br></c:if>	
													
<%-- 											<c:if test="${like.book_id > 0 }"> --%>
<!-- 												<img id="movieComplete" alt="예매완료" src="{pageContext.request.contextPath }/resources/mypage/img/review_star/completed-text-logo.png"> -->
<%-- 											</c:if> --%>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    
    <footer>
		<jsp:include page="../../cinepick/include/main_footer.jsp"></jsp:include>
	</footer>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

 
</body>

</html>