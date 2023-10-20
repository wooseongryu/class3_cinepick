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
                    <p class="mb-4">* 씨네픽 회원 탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    <div id="contents">

					<div class="user-out mt10">
						<ol>
							<li>
								<p class="txt" style="margin-top: 30px;">1. 30일간 회원 재가입이 불가능합니다.</p>
				
								<ul class="dot-list mt10">
									<li>회원 탈퇴 후, 30일 경과 후 재가입할 수 있습니다.</li>
								</ul>
							</li>
							<li>
								<p class="txt">2. 다음에 경우에 회원 탈퇴가 제한됩니다.</p>
				
								<ul class="dot-list mt10">
									<li>영화예매 내역이 있는 경우</li>
<!--									<li>모바일오더 주문건이 있는 경우</li>-->
									<li>기프트카드 잔액이 있을 경우</li>
<!--									<li>기명식 기프트카드가 카드정지 상태인 경우</li>-->
<!--									<li>기명식 기프트카드 환불신청이 진행중인 경우</li>-->
								</ul>
							</li>
							<li>
								<p class="txt">3. 탈퇴 후 삭제 내역</p>
				
								<ul class="dot-list mt10">
									<li>씨네픽 멤버십 포인트 및 적립/차감 내역</li>
									<li>관람권 및 쿠폰</li>
									<li>영화 관람 내역</li>
									<li>간편 로그인 연동 정보</li>
								</ul>
							</li>
							<li>
								<p class="txt">4. 고객님께서 불편하셨던 점, 아쉬웠던 점을 알려주시면 앞으로 더 나은 모습으로 찾아 뵙겠습니다.</p>
				
								<ul class="reason">
									
										<li>
											<input type="radio" name="useroutcheck" id="userout01" value="서비스 장애가 잦아서" />
											<label for="userout01">서비스 장애가 잦아서</label>
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout02" value="이벤트 및 무료서비스 혜택이 적어서" />
											<label for="userout02">이벤트 및 무료서비스 혜택이 적어서</label>
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout03" value="불만 및 불편사항에 대한 고객응대가 나빠서" />
											<label for="userout03">불만 및 불편사항에 대한 고객응대가 나빠서</label>
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout04" value="영화관람시 시설 및 가격등의 불만 때문에" />
											<label for="userout04">영화관람시 시설 및 가격등의 불만 때문에</label>
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout05" value="이용빈도가 낮고 개인정보 유출이 우려되어" />
											<label for="userout05">이용빈도가 낮고 개인정보 유출이 우려되어</label>
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout06" value="탈퇴 후 재가입을 위해" />
											<label for="userout06">탈퇴 후 재가입을 위해</label>
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout07" value="기타" />
											<label for="userout07">기타</label>
											
												<input type="text" class="input-text w600px ml10" title="기타 입력" id="etcText" />
											
										</li>
									
										<li>
											<input type="radio" name="useroutcheck" id="userout08" value="휴면계정 만료" />
											<label for="userout08">휴면계정 만료</label>
											
										</li>
									
								</ul>
							</li>
							<li>
								<p class="txt">5. 회원님의 비밀번호를 입력하시고 [탈퇴] 버튼을 클릭해주세요.</p>
				
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
											<tr>
												<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호<!--휴대폰 번호--></label></th>
												<td>
													<input type="text" id="ibxSchPwdMblpTelno" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px"><!--'-' 없이 입력-->
													<button id="btnSchPwdMbCertNoSend" type="button" class="button gray w100px ml08" disabled="disabled">인증요청<!--인증요청--></button>
												</td>
											</tr>
											<tr id="schPwdMblpCertRow">
												<th scope="row"><label for="ibxSchPwdMblpCharCertNo">인증번호<!--인증번호--></label></th>
												<td>
													<div class="chk-num">
														<div class="line">
															<input maxlength="4" type="text" id="ibxSchPwdMblpCharCertNo" class="input-text w180px" title="인증번호 입력" /><!--인증번호 입력-->
				
<!--															<div class="time-limit" id="schPwdtimer">-->
<!--																3:00 아직 어떻게 하는지 모름-->
<!--															</div>-->
														</div>
													</div>
				
													<button id="btnSchPwdMblpCharCert" type="button" class="button gray-line w100px ml08">인증확인<!--인증확인--></button>
													<div id="schPwdMblpNo-error-text" class="alert"></div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</li>
						</ol>
					</div>

					<div class="btn-group" role="group" aria-label="Basic example">
					  <button type="button" class="btn btn-light">취소</button>
					  <button type="button" class="btn btn-dark">등록</button>
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