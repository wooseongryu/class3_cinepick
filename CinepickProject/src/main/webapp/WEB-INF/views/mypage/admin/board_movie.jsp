<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

<script>
	// 팝업창 띄우기
	var popupWidth = 1000;
	var popupHeight = 800;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	var popupY= (window.screen.height / 2) - (popupHeight / 2);
	function insertMovie() {
		window.open('adminMovieInsert','', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
	}
	function detailMovie(movie_code) {
		window.open('adminMovieDetail?movie_code=' + movie_code,'', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
	}
	function updateMovieStatus() {
		let result = confirm("개봉상태를 업데이트 하시겠습니까?");
		
		if(result) {
			location.href="MovieStatusUpdate"
		}
	}
	function MovieStatusModify(movie_code, movie_name) {
		let ismovieFin = confirm(movie_name + " 상영을 종료하시겠습니까?");
		if(ismovieFin) {
			location.href= "MovieStatusFin?movie_code=" + movie_code
		}
	}
	
	
</script>
	

</head>

<body id="page-top">

    <header>
		<jsp:include page="../../cinepick/include/main_top.jsp"></jsp:include>
	</header>

    <!-- Page Wrapper -->
    <div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="admin_sidebar.jsp"></jsp:include>
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
                                <a class="dropdown-item" href="adminUpdate?id=${sessionScope.sId }">
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
                    <h1 class="h3 mb-2 text-gray-800">영화 정보관리 페이지</h1>
                    <p class="mb-4">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">영화 조회 내역</h6>
                            	<div style="text-align: center">
												<button type="button" class="btn btn-primary" onclick="insertMovie()">등록</button>
												&emsp;<button type="button" class="btn btn-primary" onclick="updateMovieStatus()">개봉상태 변경하기</button>
                            	</div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead class="table-dark">
                                        <tr>
                                            <th>영화코드</th>
                                            <th>영화제목</th>
                                            <th>심의등급</th>
                                            <th>개봉일</th>
                                            <th>개봉상태</th>
                                            <th>러닝타임</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="movie" items="${movieList }">
	                                        <tr>
	                                            <td>${movie.movie_code }</td>
	                                            <td>${movie.movie_nameK }</td>
	                                            <td>${movie.movie_rated }</td>
	                                            <td>${movie.movie_openDt}</td>
	                                            <td>${movie.movie_status }</td>
	                                            <td>${movie.movie_runtime }</td>
												<td>
													<button type="button" class="btn btn-primary" onclick="detailMovie(${movie.movie_code})">상세보기</button>
													&emsp;<button type="button" class="btn btn-primary" onclick="MovieStatusModify(${movie.movie_code},'${movie.movie_nameK }')"
															<c:if test="${movie.movie_status eq '상영종료' }">disabled style="background: gray; border: none;"</c:if>>상영종료</button>
												</td>
	                                        </tr>
                                    	</c:forEach>
                                    </tbody>
<!--                                     <tfoot> -->
<!--                                         <tr> -->
<!-- 											<td colspan="8" style="text-align: center"> -->
<!-- 												<button type="button" class="btn btn-primary" onclick="insertMovie()">등록</button> -->
<!-- 												&emsp;<button type="button" class="btn btn-primary" onclick="updateMovieStatus()">개봉상태 변경하기</button> -->
<!-- 											</td> -->
<!--                                         </tr> -->
<!--                                     </tfoot> -->
                                </table>
                            </div>
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