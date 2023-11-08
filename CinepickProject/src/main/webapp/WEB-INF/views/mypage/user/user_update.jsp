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
    
	<script src= "${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	
	<script type="text/javascript">
	$(function() {
		// 2. 비밀번호 입력창 체크
		$("#user_passwd").blur(function() {
			let passwd = $("#user_passwd").val();
			let msg = "";
			let color = "";
			
			// 비밀번호 입력값 검증(복잡도 검사 포함)
			// 1) 비밀번호 길이 검증 : 영문자, 숫자, 특수문자(!@#$%) 조합 8 ~ 16자리
			let lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
				
			if(passwd == "") { // 비밀번호 미입력
				msg = "비밀번호 입력 필수!";
				color = "red";
			} else if(!lengthRegex.exec(passwd)) { // 비밀번호 길이 체크 위반
				msg = "비밀번호 길이 8 ~ 16글자 필수!";
				color = "red";
			} else {
				// 2) 비밀번호(패스워드) 복잡도 검사(영문자 대&소문자, 숫자, 특수문자 중 최소 2가지 조합)
				// => 단, 부분 검사 수행을 위해 각각의 규칙에서 ^ 기호와 $ 기호는 미사용
				// 2-1) 영문자 대문자 검사 규칙
				let engUpperRegex = /[A-Z]/;
				// 2-2) 영문자 소문자 검사 규칙
				let engLowerRegex = /[a-z]/;
				// 2-3) 숫자 검사 규칙
				let numRegex = /[\d]/; // [0-9] 와 동일
				// 2-4) 특수문자(!@#$%) 검사 규칙
				let specRegex = /[!@#$%]/;
				
				// 부분 검사를 통해 일치하는 항목 존재할 경우 카운팅 변수값 1 증가시키기
				let count = 0;
				
				if(engUpperRegex.exec(passwd)) count++; // 대문자가 포함되어 있을 경우
				if(engLowerRegex.exec(passwd)) count++; // 소문자가 포함되어 있을 경우
				if(numRegex.exec(passwd)) count++; // 숫자가 포함되어 있을 경우
				if(specRegex.exec(passwd)) count++; // 특수문자가 포함되어 있을 경우
				
				// 복잡도 검사 결과 판별
				// 4점 : 안전, 3점 : 보통, 2점 : 위험, 1점 이하 : 사용 불가능한 패스워드!
				switch(count) {
					case 4 : 
						msg = "안전";
						color = "green";
						break;
					case 3 : 
						msg = "보통";
						color = "blue";
						break;
					case 2 : 
						msg = "위험";
						color = "orange";
						break;
					case 1 : // 1점과 0점은 공통 처리를 위해 break 문 없이
					case 0 : // 중복 항목들 중 마지막 case 문에서 중복 처리 기술
						msg = "사용 불가능한 패스워드!";
						color = "red";
				}
				
			}
			
			// 텍스트와 글자색상 변수를 활용하여 상태 변경
			$("#checkPasswdResult").html(msg);
			$("#checkPasswdResult").css("color", color);
		});
		
		
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
                    <h1 class="h3 mb-2 text-gray-800">개인 정보 수정</h1>
                    <p class="mb-4">회원님의 정보를 입력해주세요</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
<!--                         <div class="card-header py-3"> -->
<!--                             <h6 class="m-0 font-weight-bold text-primary"></h6> -->
<!--                         </div> -->
                        <div class="card-body">
                            <div class="table-responsive">
								<form class="user" action="userUpdatePro" method="post">
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
				                                <span id ="checkPasswdResult"></span>
												<div class="form-group">
						                            <input type="password" class="form-control form-control-user" name="user_passwd" id="user_passwd"
						                                placeholder="비밀번호 8 ~ 16글자 사이 입력" pattern="^[A-Za-z0-9][\w]{7,15}$" title="8 ~ 16글자 영문자, 숫자, 특수문자(_) 조합">
						                        </div>
											</td>
										</tr>
	                                    <tr>
											<th>비밀번호 확인</th>
											<td>
					                        	<span id ="checkPasswdResult2"></span>
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
											<th>카카오 연동 유무</th>
											<td>
												<div class="form-group">
						                            <input type="text" class="form-control form-control-user" name="user_kakao"
						                                value="${user.kakao_id }" readonly>
						                        </div>
											</td>
										</tr>
<!-- 	                                    <tr> -->
<!-- 											<th>성별</th> -->
<!-- 											<td> -->
<!-- 												<div class="form-group"> -->
<!-- 						                            <input type="text" class="form-control form-control-user" name="user_gender" -->
<%-- 						                                value="${user.user_gender }" readonly> --%>
<!-- 						                        </div> -->
<!-- 											</td> -->
<!-- 										</tr> -->
	                                </table>
	                                
									<div class="btn-group" role="group" aria-label="Basic example">
									  <button type="submit" class="btn btn-dark">정보변경</button>
									  <button type="button" class="btn btn-light" onclick="history.back()">돌아가기</button>
									  <c:if test="${user.kakao_id eq '미연동' }">
									  	<button type="button" class="btn btn-light" onclick="location.href='https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=82f0e433368d62e7e10aafef708b21f4&redirect_uri=http://c3d2306t1.itwillbs.com/cinepick/kakao/callback'">카카오 연동</button>
									  </c:if>
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