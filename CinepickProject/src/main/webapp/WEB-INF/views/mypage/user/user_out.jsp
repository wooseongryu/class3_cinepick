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
    <link href="${pageContext.request.contextPath }/resources/mypage/css/user_out.css" rel="stylesheet">

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
                    <h1 class="h3 mb-2 text-gray-800">회원 탈퇴</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    	<div id="contents">

							<div class="user-out mt10">
								<ol>
									<li>
										<p class="txt">회원님의 비밀번호를 입력하시고 [탈퇴] 버튼을 클릭해주세요.</p>
						
										<div class="table-wrap">
											<table class="board-form">
												<colgroup>
													<col style="width:180px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">
															<label for="pwd_chk">비밀번호</label>
														</th>
														<td>
															<input type="password" class="input-text w160px" id="pwd" />
														</td>
													</tr>
													<input id="ibxSchPwdLoginId" type="hidden" value="#테스트"><!--아이디-->
													<input id="ibxSchPwdMbNm" type="hidden" value="#테스트"><!--이름-->
		<!-- 											<tr> -->
		<!-- 												<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호휴대폰 번호</label></th> -->
		<!-- 												<td> -->
		<!-- 													<input type="text" id="ibxSchPwdMblpTelno" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px">'-' 없이 입력 -->
		<!-- 													<button id="btnSchPwdMbCertNoSend" type="button" class="button gray w100px ml08" disabled="disabled">인증요청인증요청</button> -->
		<!-- 												</td> -->
		<!-- 											</tr> -->
		<!-- 											<tr id="schPwdMblpCertRow"> -->
		<!-- 												<th scope="row"><label for="ibxSchPwdMblpCharCertNo">인증번호인증번호</label></th> -->
		<!-- 												<td> -->
		<!-- 													<div class="chk-num"> -->
		<!-- 														<div class="line"> -->
		<!-- 															<input maxlength="4" type="text" id="ibxSchPwdMblpCharCertNo" class="input-text w180px" title="인증번호 입력" />인증번호 입력 -->
		<!-- 														</div> -->
		<!-- 													</div> -->
						
		<!-- 													<button id="btnSchPwdMblpCharCert" type="button" class="button gray-line w100px ml08">인증확인인증확인</button> -->
		<!-- 													<div id="schPwdMblpNo-error-text" class="alert"></div> -->
		<!-- 												</td> -->
		<!-- 											</tr> -->
												</tbody>
											</table>
										</div>
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn btn-light">취소</button>
											<button type="button" class="btn btn-dark">등록</button>
										</div>
									</li>
								</ol>
							</div>
	
	                    
	                    </div>

					</div>
                <!-- /.container-fluid -->

				</div>
            <!-- End of Main Content -->
            
			</div>
		</div>
    
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