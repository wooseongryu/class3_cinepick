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
	
	<section class="product-page spad">
	    <div class="container">
			<div class="row">
	            <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h5>1:1문의</h5>
	                    </div>
	                    <div class="test" id="order_comment">
	                        <h5>
	                            <a href="qna">자주묻는질문</a>
	                             &nbsp;&nbsp;
	                            <a href="notice">공지사항</a>
	                             &nbsp;&nbsp;
	                            <a href="oneToOneQna" style="color: #503396;">1:1문의</a>
	                        </h5>
	                    </div>
	
	                    
	                    <form action="oneToOneQnaPro" method="post">
	                    	<input type="hidden" name="myQuestion_id" value="${sessionScope.sId}">
							<div class="row">
								<div class="col-3">
									<div class="qna_form">
										<h6>
			                                제목
			                            </h6>
			                        </div>
							    </div>
							    <div class="col-9">
		                        	<input type="text" name="myQuestion_subject" class="form-control form-control-lg" id="subject" placeholder="제목을 입력해주세요.">
								</div>
							</div>
		
							<div class="row">
								<div class="col-3">
									<div class="qna_form">
										<h6>
			                                내용
			                            </h6>
			                        </div>
			                        <div class="qna_submit">
			                        	<button type="submit" class="qna_submit_btn">등록</button>
			                        </div>
							    </div>
							    <div class="col-9">
		                            <textarea class="form-control" name="myQuestion_content" id="content" rows="20" placeholder="문의내용에 개인정보(이름,연락처,카드번호 등)가 포함되지 않도록 유의하세요."></textarea>
								</div>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</section>

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