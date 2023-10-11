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

    <!-- 개인 수정 (성윤) -->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/user_update.css" rel="stylesheet">

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
                    <p class="mb-4">회원님의 정보를 정확히 입력해주세요.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary"></h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
								
								
								<form class="user">
								
                                <table class="table table-bordered" id="profileTable" width="100%" cellspacing="0">
									<tr>
						                <th scope="row">프로필 사진</th>
						                <td>
						                    <div class="profile-photo">
						                        <form name="fileForm">
						                            <input type="file" id="profileTarget" name="file" style="display: none;">
						                        </form>
					                            <div class="profile-img">
					                                <img src="https://www.megabox.co.kr/static/pc/images/mypage/bg-profile.png" alt="프로필 사진 샘플" />
						                            <button type="button" class="small btn btn-light" id="addProfileImgBtn">이미지 등록</button>
					                            </div>
												
												<div class="member-out-div">
							                        <a href="member_out.html" class="button small member-out btn-dark" title="회원탈퇴">회원탈퇴</a>
												</div>
												
							                    <p class="comment">
							                        ※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.
							                    </p>
						                    </div>
						                </td>
						            </tr>
						            <tr>
						                <th scope="row">아이디</th>
						                <td>hong123</td>
						            </tr>
								
								</table>
								
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <tr>
										<th>이름</th>
										<td>
											<div class="form-group">
					                            <input type="text" class="form-control form-control-user" id="exampleInputName"
					                                placeholder="이름" value="테스트">
					                        </div>
										</td>
									</tr>
                                    <tr>
										<th>주민번호</th>
										<td>
											<div class="row g-3">
											  <div class="col-sm">
											    <input type="text" class="form-control form-control-user" readonly>
											  </div>
											  -
											  <div class="col-sm">
											    <input type="text" class="form-control form-control-user" readonly>
											  </div>
											</div>
										</td>
									</tr>
                                    <tr>
										<th>기존 비밀번호</th>
										<td>
											<div class="form-group">
					                            <input type="password" name="oldPasswd" class="form-control form-control-user">
					                        </div>
										</td>
									</tr>
                                    <tr>
										<th>새 비밀번호</th>
										<td>
											<div class="form-group">
					                            <input type="password" class="form-control form-control-user"
					                            name="passwd" placeholder="8 ~ 16글자 사이(변경시)">
					                        </div>
										</td>
									</tr>
                                    <tr>
										<th>새 비밀번호 확인</th>
										<td>
											<div class="form-group">
					                            <input type="password"  class="form-control form-control-user" name="passwd2">
					                        </div>
										</td>
									</tr>
                                    <tr>
										<th>주소</th>
										<td>
											<div class="form-group">
					                            <input type="text" class="form-control form-control-user" placeholder="기본주소">
<!--					                            <input type="button" id="btnSearchAddress" value="주소검색" class="small btn btn-light">-->
					                            <button type="button" class="small btn btn-light" style="float: right; margin-left: 0;">주소 검색</button>
					                        </div>
											<div class="form-group">
					                            <input type="text" class="form-control form-control-user" 
					                                placeholder="상세주소" style="margin-top: 10px; margin-bottom: 0;">
					                        </div>
										</td>
									</tr>
									<tr>
										<th>휴대폰</th>
										<td>
											<div class="form-group">
					                            <input type="phone" class="form-control form-control-user" placeholder="'-' 없이 숫자만 입력해주세요.">
					                        </div>
										</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>
											<div class="row g-3">
											  <div class="col-sm">
					                            <input type="text" name="email1" required="required" size="10" class="form-control form-control-user">
											  </div>
											  @
											  <div class="col-sm">
												<input type="text" name="email2" required="required" size="10" class="form-control form-control-user">
											  </div>
											  <select id="emailDomain">
												<option value="">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="nate.com">nate.com</option>
												<option value="gmail.com">gmail.com</option>
											  </select>
											</div>
											<div class="form-group">
					                        </div>
										</td>
									</tr>
                                </table>
                            </form>
							
							<div class="btn-group" role="group" aria-label="Basic example">
							  <button type="button" class="btn btn-light">취소</button>
							  <button type="button" class="btn btn-dark">등록</button>
							</div>
								
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
    

</body>
    
    <footer>
		<jsp:include page="../../cinepick/include/main_footer.jsp"></jsp:include>
	</footer>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

</html>