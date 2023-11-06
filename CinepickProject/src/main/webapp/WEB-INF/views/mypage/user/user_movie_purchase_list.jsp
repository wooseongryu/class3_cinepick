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
                   <h1 class="h3 mb-2 text-gray-800">예매 내역 페이지</h1>
                    <p class="mb-4">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">예매 내역 조회</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead class="table-dark">
                                        <tr>
                                            <th>예매번호</th>
                                            <th>예매좌석</th>
                                            <th>예매인원</th>
                                            <th>예매일</th>
                                            <th>예매금액</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
<!-- 											<td colspan="5"><button type="button" class="btn btn-primary" onclick="updateQuestion()">등록</button>&nbsp;&nbsp;<button type="button" class="btn btn-primary">삭제</button></td> -->
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="book" items="${bookList }">
	                                        <tr>
	                                            <td>${book.book_id }</td>
	                                            <td>${book.seat_list }</td>
	                                            <td>${book.ticket_type }</td>
	                                            <td>${book.book_date }</td>
	                                            <td>${book.total_cost }원</td>
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

       		</div>
            <!-- End of Main Content -->
            
			<!-- 예매 관련 정책 -->
<!-- 			<div class="sect-box-descri"> -->
<!-- 				<h4>&nbsp;&nbsp;&nbsp;CinePick 예매 관련 정책 안내</h4> -->
<!-- 				<div class="box-polaroid"> -->
<!-- 				    <div class="box-inner"> -->
<!-- 				        <ul> -->
<!-- 				            <li> -->
<!-- 				            	<dl> -->
<!-- 				            		<dt>이용안내</dt> -->
<!-- 				            		<dd> -->
<!-- 				            			<ul> -->
<!-- 				            				<li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li> -->
<!-- 				    	            		<li>상영 시간 이후 관람하신 영화의 영수증 출력을 원하실 경우, CinePick 고객센터 1234-5678로 문의 주시기 바랍니다.</li> -->
<!-- 				            				<li>취소하신 내역이 나타나지 않거나 궁금하신 사항이 있으시면, 고객센터로 문의해 주시기 바랍니다.</li> -->
<!-- 				            			</ul> -->
<!-- 				            		</dd> -->
<!-- 				            	</dl> -->
<!-- 				            </li> -->
				            
<!-- 				            <li> -->
<!-- 				            	<dl> -->
<!-- 				            		<dt>티켓 교환방법</dt> -->
<!-- 				            		<dd> -->
<!-- 				            			<ul> -->
<!-- 				            				<li> -->
<!-- 				            					<p><strong>티켓판매기(ATM)에서 발권하실 경우</strong><br>예매번호 또는 고객인증번호 (법정생년월일 6자리 + 휴대폰번호 뒷 7~8자리)를 입력하시면 티켓을 편하게 발권하실 수 있습니다.</p> -->
<!-- 				            				</li> -->
<!-- 				            				<li> -->
<!-- 				            					<p><strong>매표소에서 발권하실 경우</strong><br>티켓교환권을 출력하여 매표소에 방문하시면 티켓으로 교환하실 수 있습니다.<br> -->
<!-- 					            				(티켓교환권 출력이 어려운 경우, 예매번호와 신분증을 지참하시면 매표소에서 티켓을 수령하실 수 있습니다.)</p> -->
<!-- 				            				</li> -->
<!-- 				            			</ul> -->
<!-- 				            		</dd> -->
<!-- 				            	</dl> -->
<!-- 				            </li> -->
				            
<!-- 				            <li> -->
<!-- 				            	<dl> -->
<!-- 				            		<dt>예매 취소 안내</dt> -->
<!-- 				            		<dd> -->
<!-- 				            			<ul> -->
<!-- 			                                <li> -->
<!-- 			                                    <p><strong>신용카드</strong><br> 결제 후 3일 이내 취소 시 승인 취소 가능, 3일 이후 매입 취소시 영업일 기준 3~5일 소요</p> -->
<!-- 			                                </li> -->
<!-- 			                                <li> -->
<!-- 			                                    <p><strong>체크카드</strong><br>결제 후 3일 이내 취소 시 당일 카드사에서 환불처리. 3일 이후 매입 취소 시 카드사에 따라 3~10일 이내 카드사에서 환불</p> -->
<!-- 			                                </li> -->
<!-- 			                                <li>                             -->
<!-- 			                                    <p><strong>카카오페이</strong><br> -->
<!-- 			                                        카카오페이머니나 카카오포인트를 사용하신 경우 각각의 잔액으로 원복되며, 카드 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p> -->
<!-- 			                                </li> -->
<!-- 			                                <li>                         -->
<!-- 			                                    <p><strong>NAVER Pay</strong><br> -->
<!-- 			                                        NAVER Pay 포인트를 사용하신 경우 NAVER Pay 포인트로 원복되며, 카드사 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p> -->
<!-- 			                                </li> -->
<!-- 			                            </ul> -->
<!-- 				            		</dd> -->
<!-- 				            	</dl> -->
<!-- 				            </li> -->
			
<!-- 				            <li> -->
<!-- 				            	<dl> -->
<!-- 				            		<dt>환불 규정 안내</dt> -->
<!-- 				            		<dd> -->
<!-- 				            			<ul> -->
<!-- 				            				<li> -->
<!-- 				            					<p><strong>현장 취소를 하는 경우</strong><br>상영시간 이전까지만 가능하며, 상영시간 이후 취소나 환불은 되지 않습니다.</p> -->
<!-- 				            				</li> -->
<!-- 				            				<li> -->
<!-- 				            					<p><strong>홈페이지에서 예매 취소할 경우</strong><br> -->
<!-- 			                                        부분 취소는 불가능합니다. (예시. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br> -->
<!-- 			                                        홈페이지 예매 취소는 상영시간 20분전까지 가능합니다.<br> -->
<!-- 			                                        상영시간 이후 취소나 환불은 되지 않습니다</p>	            					 -->
<!-- 				            				</li> -->
<!-- 			                                <li> -->
<!-- 			                                    <p><strong>단, 일부 행사의 경우 행사 당일 취소, 변경 불가 합니다.</strong></p> -->
<!-- 			                                </li> -->
<!-- 				            			</ul> -->
<!-- 				            		</dd> -->
<!-- 				            	</dl> -->
<!-- 				            </li> -->
				            
<!-- 				        </ul> -->
<!-- 				    </div> -->
<!-- 			    </div> -->
<!-- 			</div> -->

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