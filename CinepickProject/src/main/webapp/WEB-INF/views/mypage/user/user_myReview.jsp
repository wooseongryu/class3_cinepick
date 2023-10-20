<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- 개인 수정 (훈나) -->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/user_review_question.css" rel="stylesheet">

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
			                    <a class="dropdown-item" href="#">
			                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
			                        Profile
			                    </a>
			                    <a class="dropdown-item" href="#">
			                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
			                        Settings
			                    </a>
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
			        <h1 class="h3 mb-2 text-gray-800">내가 쓴 리뷰</h1>
			        <p class="mb-4"></p>
			
			        <!-- DataTales Example -->
			             <div class="card shadow mb-4">
			                 <div class="card-header py-3">
			                     <h6 class="m-0 font-weight-bold text-primary"></h6>
			                 </div>
			                 <div class="card-body" id="review-body">
			                      <div class="reviewArea" width="100%">
				<div class="form-group row">
			                             <div class="col-sm-6 mb-3 mb-sm-0">
						<h6>천박사 퇴마연구소</h6>
			                              <h6>
			                                  <span>2023.10.07 01:46</span> &nbsp;&nbsp;&nbsp;
			                                  <a href="#" class="relike-btn"><i class="fa fa-heart"></i></a> 20
			                              </h6>
			                              <p class="reviewText">
							강동원이 잘생겼어요
			                              </p>
			                             </div>
			                             <div class="col-sm-6 mb-3 mb-sm-0">
						<div class="mr-btn">
							<button type="button" class="btn btn-primary">수정</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-primary">삭제</button>&nbsp;&nbsp;
						</div>
			                             </div>
			                         </div>
			                      </div>
			                      <div class="reviewArea" width="100%">
				<div class="form-group row">
			                             <div class="col-sm-6 mb-3 mb-sm-0">
						<h6>엘리멘탈</h6>
			                              <h6>
			                                  <span>2023.10.07 01:46</span> &nbsp;&nbsp;&nbsp;
			                                  <a href="#" class="relike-btn"><i class="fa fa-heart"></i></a> 12
			                              </h6>
			                              <p class="reviewText">
							디즈니 최고의 작품....
			                              </p>
			                             </div>
			                             <div class="col-sm-6 mb-3 mb-sm-0">
						<div class="mr-btn">
							<button type="button" class="btn btn-primary">수정</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-primary">삭제</button>&nbsp;&nbsp;
						</div>
			                             </div>
			                         </div>
			                      </div>   
			                      <div class="reviewArea" width="100%">
				<div class="form-group row">
			                             <div class="col-sm-6 mb-3 mb-sm-0">
						<h6>에브리씽 에브리웨어 올 앳 원스</h6>
			                              <h6>
			                                  <span>2023.10.07 01:46</span> &nbsp;&nbsp;&nbsp;
			                                  <a href="#" class="relike-btn"><i class="fa fa-heart"></i></a> 12
			                              </h6>
			                              <p class="reviewText">
							보면서 정신이 색종이 조각으로 터져버린다.
							증식하는 조각 하나하나는 나의 부족함 속 가능성의 우주를 비춘다
							친절하자.사랑하자.지금여기서
			                              </p>
			                             </div>
			                             <div class="col-sm-6 mb-3 mb-sm-0">
						<div class="mr-btn">
							<button type="button" class="btn btn-primary">수정</button>&nbsp;&nbsp;
							<button type="button" class="btn btn-primary">삭제</button>&nbsp;&nbsp;
						</div>
			                             </div>
			                         </div>
			                     </div>
			                     <div class="review__pagination">
			                         <a href="#"><i class="fa fa-angle-double-left"></i></a>
			                         <a href="#" class="current-page">1</a>
			                         <a href="#">2</a>
			                         <a href="#">3</a>
			                         <a href="#">4</a>
			                         <a href="#">5</a>
			                         <a href="#"><i class="fa fa-angle-double-right"></i></a>
			</div>
			                 </div>
			             </div>
			         </div>
			         <!-- /.container-fluid -->
			
			</div>
			<!-- End of Main Content -->
    
    <footer>
		<jsp:include page="../../cinepick/include/main_footer.jsp"></jsp:include>
	</footer>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

</body>

</html>