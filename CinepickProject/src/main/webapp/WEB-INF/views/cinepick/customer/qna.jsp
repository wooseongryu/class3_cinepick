<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/customer-center.css" type="text/css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>

    
	<div class="container">
		<div class="row">
             <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
                 <div class="anime__details__review">
                     <div class="section-title">
                         <h5>고객센터</h5>
                     </div>
                     <div class="test" id="order_comment">
                         <h5>
                             <a style="color: red;">자주묻는질문</a>
                              &nbsp;&nbsp;
                             <a href="notice">공지사항</a>
                              &nbsp;&nbsp;
                             <a href="oneToOneQna">1:1문의</a>
                         </h5>
                     </div>
                     
                     <div class="row">
						<div class="col">
							<div class="customer_category" style="background: red">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    
					    <div class="col">
						    <a href="#">
								<div class="customer_category">
									<h6>
		                                회원
		                            </h6>
		                        </div>
	                        </a>
					    </div>
					    
					    <div class="col">
						    <a href="#">
								<div class="customer_category">
									<h6>
		                                멤버십
		                            </h6>
		                        </div>
	                        </a>
					    </div>
					    
					    <div class="col">
						    <a href="#">
								<div class="customer_category">
									<h6>
		                                관람권
		                            </h6>
		                        </div>
	                        </a>
					    </div>
					    
					    <div class="col">
						    <a href="#">
								<div class="customer_category">
									<h6>
		                                스토어
		                            </h6>
		                        </div>
	                        </a>
					    </div>
					</div>
                     
                     
					<div class="row">
						<div class="col-3">
							<div class="qna_table_head">
								<h6>
	                                카테고리
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
							<div class="qna_table_head">
	                            <h6>
	                                질문
	                            </h6>
							</div>
						</div>
					</div>
					
					
						
					<div class="row">
						<div class="col-3">
							<div class="qna_table_body">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
					    	<a href="qnaDetail">
								<div class="qna_table_body">
		                            <h6>
		                                영화 경품(굿즈) 수량 확인은 어떻게 하나요?
		                            </h6>
								</div>
							</a>
						</div>
					</div>
					
					<div class="row">
						<div class="col-3">
							<div class="qna_table_body">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
					    	<a href="#">
								<div class="qna_table_body">
		                            <h6>
		                                카드로 결제할 경우 환불은 언제 되나요?
		                            </h6>
								</div>
							</a>
						</div>
					</div>
					
											
					<div class="row">
						<div class="col-3">
							<div class="qna_table_body">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
					    	<a href="#">
								<div class="qna_table_body">
	                            	<h6>
	                                	국가유공자 할인은 어떻게 받나요?
	                            	</h6>
								</div>
							</a>
						</div>
					</div>
											
					<div class="row">
						<div class="col-3">
							<div class="qna_table_body">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
						    <a href="#">
								<div class="qna_table_body">
		                            <h6>
		                                분실물을 찾고 싶어요.
		                            </h6>
								</div>
							</a>
						</div>
					</div>
					
											
					<div class="row">
						<div class="col-3">
							<div class="qna_table_body">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
					    	<a href="#">
								<div class="qna_table_body">
		                            <h6>
		                                단체 관람의 경우 할인 혜택이 어떻게 되나요?
		                            </h6>
								</div>
							</a>
						</div>
					</div>
					
											
					<div class="row">
						<div class="col-3">
							<div class="qna_table_body">
								<h6>
	                                영화관 이용
	                            </h6>
	                        </div>
					    </div>
					    <div class="col-9">
						    <a href="#">
								<div class="qna_table_body">
		                            <h6>
		                                영화티켓 예매 및 취소는 어떻게 하나요?
		                            </h6>
								</div>
							</a>
						</div>
					</div>
                     
                     
                     <div class="product__pagination">
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
	</div>

   	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>


</body>

</html>