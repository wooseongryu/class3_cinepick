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
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">사용중인 회원 이름</span>
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
                    <h1 class="h3 mb-2 text-gray-800">개인 정보 수정</h1>
                    <p class="mb-4">회원님의 정보를 입력해주세요</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
<!--                         <div class="card-header py-3"> -->
<!--                             <h6 class="m-0 font-weight-bold text-primary"></h6> -->
<!--                         </div> -->
                        <div class="card-body">
                            <div class="table-responsive">
								<form class="user" action="UpdatePro" method="post">
	                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                                    <tr>
											<th>이름</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_name" id="user_name"
						                                value="${user.user_name }" readonly />
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>아이디</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_id" id="user_id"
						                               value="${user.user_id }" readOnly>
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>비밀번호</th>
											<td>
												<div class="form-group">
						                            <input type="password" class="form-control form-control-user" name="user_passwd" id="user_passwd"
						                                placeholder="비밀번호 4 ~ 16글자 사이 입력">
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>비밀번호 확인</th>
											<td>
												<div class="form-group">
						                            <input type="password" class="form-control form-control-user" name="user_passwd2" id="user_passwd2"
						                                placeholder="비밀번호 확인">
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>이메일 주소</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_email" id ="user_email"
						                                value="${user.user_email }" readOnly>
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>휴대폰 번호</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_phone"
						                                value="${user.user_phone }" readonly>
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>생년월일</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_birth" id="user_birth"
						                                value="${user.user_birth }" readonly>
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>성별</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_gender"
						                                value="${user.user_gender }" readonly>
						                        </div>
											</td>
										</tr>
	                                </table>
									<div class="btn-group" role="group" aria-label="Basic example">
									  <button type="button" class="btn btn-light">취소</button>
									  <button type="button" class="btn btn-dark">등록</button>
									</div>
	                            </form>
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