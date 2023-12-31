<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html lang="en">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/userTicket.css" type="text/css">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<style>
	.movie-info-bottom strong {
	    font-size: 1.2em;
	    color: #59bec9;
	}
	.movie-info-bottom strong.white {
	    font-size: 1.2em;
	    color: #c4c4c4;
	}
	
	</style>

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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">유저 마이페이지</h1>
<!--                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i-->
<!--                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>-->
                    </div>

                    <!-- Content Row -->
<!--                     <div class="row"> -->

<!--                         나의포인트 -->
<!--                         <div class="col-xl-3 col-md-6 mb-2"> -->
<!--                             <div class="card border-left-primary shadow h-100 py-2"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="row no-gutters align-items-center"> -->
<!--                                         <div class="col mr-2"> -->
<!--                                             <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"> -->
<!--                                                 회원님의 포인트가 </div> -->
<!--                                             <div class="h5 mb-0 font-weight-bold text-gray-800">40,000 남으셨습니다</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->

<!--                         이번 달 사용 금액 -->
<!--                         <div class="col-xl-3 col-md-6 mb-2"> -->
<!--                             <div class="card border-left-success shadow h-100 py-2"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="row no-gutters align-items-center"> -->
<!--                                         <div class="col mr-2"> -->
<!--                                             <div class="text-xs font-weight-bold text-success text-uppercase mb-1"> -->
<!--                                                 이번 달 사용 금액은</div> -->
<!--                                             <div class="h5 mb-0 font-weight-bold text-gray-800">￦200,000 입니다</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->


<!--                         나의 무비스토리 -->
<!--                         <div class="col-xl-3 col-md-6 mb-2"> -->
<!--                             <div class="card border-left-info shadow h-100 py-2"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="row no-gutters align-items-center"> -->
<!--                                         <div class="col mr-2"> -->
<!--                                             <div class="text-xs font-weight-bold text-info text-uppercase mb-1"> -->
<!--                                                 나의 무비스토리</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         선호관람정보 -->
<!--                         <div class="col-xl-3 col-md-6 mb-2"> -->
<!--                             <div class="card border-left-warning shadow h-100 py-2"> -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="row no-gutters align-items-center"> -->
<!--                                         <div class="col mr-2"> -->
<!--                                             <div class="text-xs font-weight-bold text-warning text-uppercase mb-1"> -->
<!--                                                 선호관람정보</div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->

					
					
					<c:if test="${not empty ticketBook }">
						<!-- 엄성윤 추가 -->
						<!-- reserve-finish -->
						<div class="reserve-finish">
							<!-- reserve-ininfomation-box -->
							<div class="reserve-ininfomation-box">
								<div class="movie-poster-area">
									<p>
										티켓 예매번호 <!-- 티켓 예매번호 -->
		<!-- 								<span class="roboto">9132-389-47509</span> -->
										<span class="roboto">${ticketBook.book_id}</span>
									</p>
									<img src="${ticketBook.movie_poster }" alt="${ticketBook.movie_nameK}" onerror="noImg(this)">
		<!-- 							<img src="https://img.megabox.co.kr/SharedImg/2023/10/25/FXFCIlhJ6JEcTfk8BpVkSWvmf84sSpe9_316.jpg" alt="(자막) 그대들은 어떻게 살 것인가" onerror="noImg(this)"> -->
								</div>
			
								<!-- movie-infomation-area -->
								<div class="movie-infomation-area">
									<div class="movie-info-top">
										<p class="tit">
											<strong>내가 기다리는 영화 <!-- 예매가 완료되었습니다 --><i></i></strong>
											
		<!-- 										<span class="righten"> <i class="iconset ico-circle-point"></i> 고객님의 상영익일 적립예정 포인트는 고객님의 상영익일 적립예정 포인트는 <em>550P</em>입니다. 입니다.</span> -->
											
										</p>
									</div>
			
									<div class="movie-info-middle">
										<ul class="dot-list gray">
											<li><span>예매영화 <!-- 예매영화 --></span> ${ticketBook.movie_nameK}</li>
											<li><span>관람극장/상영관 <!-- 관람극장/상영관 --></span> ${ticketBook.theater_name} / ${ticketBook.screen_name}</li>
											<li><span>관람일시 <!-- 관람일시 --></span> &nbsp;${ticketBook.sche_date} ${ticketBook.sche_start_time }</li>
	<%-- 										<li class="dday" data-sche_date="${ticketBook.sche_date}"></li> --%>
											<li><span>관람인원 <!-- 관람인원 --></span> &nbsp;${ticketBook.ticket_type}</li>
											<li><span>좌석번호 <!-- 좌석번호 --></span> &nbsp;${ticketBook.seat_list}</li>
		<!-- 									<li><span>전화번호 전화번호</span> &nbsp;010-5912-9507</li> -->
											<li>
												<span>결제정보 <!-- 결제정보 --></span>
												<strong class="roboto">${ticketBook.total_cost}</strong> 원 <!-- 원 --><br>
												<em></em>
											</li>
										</ul>
									</div>
		
									<!-- movie-info-bottom -->
									<div class="movie-info-bottom">
										<div class="add-send">
		<!-- 								예매정보 추가 발송 예매정보 추가 발송 -->
		<!-- 								<p class="cinipickP">♥ 씨네픽과 함께 즐거운 관람되세요 ♥</p> -->
	<%-- 									<p class="dday" data-sche_date="${ticketBook.sche_date}"></p> --%>
										<p class="cinepickP" style="margin-left: 490px; margin-top: 10px;">씨네픽과 함께라면 누구나 씨네필!</p>
										<p style="float:right;">
											<strong class="roboto white">영화 관람까지</strong>
											<strong class="roboto dday" data-sche_date="${ticketBook.sche_date}"></strong>
											<strong class="roboto white">남았습니다.</strong>
										</p>
		<!-- 									<a href="#tooltip01_01" class="tooltip hover" title="입력하신 번호로 예매정보를 추가발송합니다."> -->
		<!-- 										<span> -->
		<!-- 											<i class="iconset ico-question-white">&nbsp;</i> -->
		<!-- 										</span> -->
		<!-- 										<div class="ir" id="tooltip01_01" data-width="220"> -->
		<!-- 											입력하신 번호로 예매정보를 추가발송합니다. 입력하신 번호로 예매정보를 추가발송합니다. -->
		<!-- 										</div> -->
		<!-- 									</a> -->
		<!-- 									<input type="text" title="연락처 입력" class="input-text w150px ml10" maxlength="11" id="inp_sms_rcv_no"> -->
		<!-- 									<button type="button" class="button" id="btn_re_send_sms">전송 전송</button> -->
										</div>
									</div>
		<!-- 							// movie-info-bottom -->
								</div>
								<!--// movie-infomation-area -->
							</div>
							<!--// reserve-ininfomation-box -->
						</div>
						<!--// reserve-finish -->
					</c:if>
					
					
					
					
					
					<br>
					
					
					




                    <!-- Content Row -->
                    <div class="row">

                        <!-- 나의 예매내역 -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">나의 예매내역</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        </a>
                                    </div>
                                </div>
                                <!-- 최근 관람한 영화 들어가야할 자리 -->
                                <div class="card-body">
                                    <div class="card shadow mb-3">
										<div class="row row-cols-1 row-cols-md-12 g-4">
											<c:forEach var="book" items="${bookList }">
												<div class="col-3">
													<div class="card h-90">
														<div class="card-header">
															<small class="text-body-secondary">${book.movie_nameK }</small>
														</div>
														<img src="${book.movie_poster }" class="card-img-top">
														<div class="card-footer">
															<small class="text-body-secondary">${book.book_date }</small>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
                                    </div>
                        		</div>
                            </div>
<!--                             <div class="card shadow mb-4"> -->
                                <!-- Card Header - Dropdown -->
<!--                                 <div -->
<!--                                     class="card-header py-3 d-flex flex-row align-items-center justify-content-between"> -->
<!--                                     <h6 class="m-0 font-weight-bold text-primary">스토어 구매내역</h6> -->
<!--                                     <div class="dropdown no-arrow"> -->
<!--                                         <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" -->
<!--                                             data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                                         </a> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <!-- 스토어 구매상품 들어가야할 자리 -->
<!--                                 <div class="card-body"> -->
<!--                                     <div class="card shadow mb-3"> -->
<!-- 										<div class="row row-cols-1 row-cols-md-3 g-4"> -->
<!-- 										  <div class="col"> -->
<!-- 										    <div class="card h-90"> -->
<!-- 										      <div class="card-header"> -->
<!-- 										        <small class="text-body-secondary">구매상품</small> -->
<!-- 										      </div> -->
<!-- 										      <img src="#" class="card-img-top" alt="#"> -->
<!-- 										      <div class="card-body"> -->
<!-- 										        <h5 class="card-title">상품사진</h5> -->
<!-- 										        <p class="card-text"></p> -->
<!-- 										      </div> -->
<!-- 										      <div class="card-footer"> -->
<!-- 										        <small class="text-body-secondary">3일전</small> -->
<!-- 										      </div> -->
<!-- 										    </div> -->
<!-- 										  </div> -->
<!-- 										  <div class="col"> -->
<!-- 										    <div class="card h-90"> -->
<!-- 										      <div class="card-header"> -->
<!-- 										        <small class="text-body-secondary">구매상품</small> -->
<!-- 										      </div> -->
<!-- 										      <img src="#" class="card-img-top" alt="#"> -->
<!-- 										      <div class="card-body"> -->
<!-- 										        <h5 class="card-title">상품사진</h5> -->
<!-- 										        <p class="card-text"></p> -->
<!-- 										      </div> -->
<!-- 										      <div class="card-footer"> -->
<!-- 										        <small class="text-body-secondary">2주일전</small> -->
<!-- 										      </div> -->
<!-- 										    </div> -->
<!-- 										  </div> -->
<!-- 										  <div class="col"> -->
<!-- 										    <div class="card h-90"> -->
<!-- 										      <div class="card-header"> -->
<!-- 										        <small class="text-body-secondary">구매상품</small> -->
<!-- 										      </div> -->
<!-- 										      <img src="#" class="card-img-top" alt="#"> -->
<!-- 										      <div class="card-body"> -->
<!-- 										        <h5 class="card-title">최근영화</h5> -->
<!-- 										        <p class="card-text"></p> -->
<!-- 										      </div> -->
<!-- 										      <div class="card-footer"> -->
<!-- 										        <small class="text-body-secondary">2달전</small> -->
<!-- 										      </div> -->
<!-- 										    </div> -->
<!-- 										  </div> -->
<!-- 										</div> -->
<!--                                     </div> -->
<!--                         		</div> -->
<!--                     		</div> -->
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
    
    <script>
    
		$(function() {
			dday();
		});
	
		function dday() {
			$(".dday").each(function() {
				let dday = new Date($(this).data("sche_date"));
				let now = new Date();
				console.log(now);
				let distance = dday - now;
				let d = Math.floor(distance / (1000 * 60 * 60 * 24)) + 1;
// 				$(this).html('D-' + d);
				$(this).html(d + '일');
				
			});
			
		}
    
    </script>

</body>

</html>