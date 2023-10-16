<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>장바구니</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/shopping_basket.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    
    
     <style type="text/css"> 
		.package_img {
			width: 300px;
			height: 100%;
			margin: auto;
			border-radius: 1px;
		}
		
	</style>
	
</head>

<body>

<header>
	<jsp:include page="../include/main_top.jsp"></jsp:include>
</header>

<!-- Product Section Begin -->
   <section class="product-page spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <div class="product__page__content">
                   
                           <div class="row">
                               <div class="col-lg-8">
                                   <div class="section-title">
                                       <h4>장바구니</h4>
                                       <br>
                                   </div>
                               </div>
                           </div>
                            
			<!-- 상품정보 -->
              <div class="row">
              
					<div class="col">
						<div class="shop_head">
							<h6>
                                상품정보
                            </h6>
                        </div>
                        
                        <div class="shop_body">
							<div class="shop_payment">
								<div class="pay_step">
									<img src="${pageContext.request.contextPath }/resources/cinepick/img/store/package-1.jpg" class="package_img">
									<hr>
									<div>
										스위트샵 상품권 1개 / 온라인 관람권 1개<br>
										<b>수량<br>
										1개<br>
										</b>
									</div>
								</div>
							</div>
                        </div>
				    </div>
				    
				    <!-- 결제 수단 -->					    
				    <div class="col-7">
						<div class="shop_head">
							<h6>
                               	결제 수단
                            </h6>
                        </div>
                        <div class="shop_body" >
                        <div class="shop_payment">
								
								<div class="pay_shop">
									<h5>할인/포인트</h5>
									<br>적용할 수 있는 할인이 없습니다.
								</div>
							</div>
							<hr>
							<div class="shop_payment">
								<div class="pay_shop">
									<h5>최종 결제수단</h5>
									<div class="pay_shop">
										<input type="radio" name="pay_radio" id="pay_radio0"  value="0">
										<label for="pay_radio0">신용카드</label>
										<input type="radio" name="pay_radio" id="pay_radio1" value="1">
										<label for="pay_radio1">카카오페이</label>
										<input type="radio" name="pay_radio" id="pay_radio2" value="2">
										<label for="pay_radio2">토스페이</label>
										<input type="radio" name="pay_radio" id="pay_radio3" value="3">
										<label for="pay_radio3">네이버페이</label>
									</div>
								</div>
								
								<hr>
								
								<div class="pay_shop">
									<div class="transfer_wrap">
										<div id="pay_card" style="display: none;">
											<select class="form-select">
												<option selected>카드를 선택하세요.</option>
												<option value="1">신한카드</option>
												<option value="2">국민카드</option>
												<option value="3">삼성카드</option>
												<option value="3">현대카드</option>
												<option value="3">우리카드</option>
												<option value="3">BC카드</option>
											</select>
										</div>
										<div id="pay_k" style="display: none;">
											<h6>카카오페이 결제 순서</h6>
											1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>
											2. 예매내역 확인 후 결제하기 버튼 클릭 시 '카카오페이' 결제 인증창이 뜹니다.<br>
											3. '카카오페이'결제 인증창에서 정보를 입력하신 후 결제해주세요.<br>
										</div>
										<div id="pay_t" style="display: none;">
											<h6>토스 결제 순서</h6>
											1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>
											2. 예매내역 확인 후 결제하기 버튼 클릭 시 '토스' 결제 인증창이 뜹니다.<br>
											3. '토스'결제 인증창에서 정보를 입력하신 후 결제해주세요.<br>
										</div>
										<div id="pay_n" style="display: none;">
											<h6>네이버페이 결제 순서</h6>
											1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>
											2. 예매내역 확인 후 결제하기 버튼 클릭 시 '네이버페이' 결제 인증창이 뜹니다.<br>
											3. '네이버페이'결제 인증창에서 정보를 입력하신 후 결제해주세요.<br>
										</div>
									</div>
								</div>
							</div>
                       	</div>
				    </div> <!-- 결제수단 끝 -->
				    
						 <!-- 결제 하기 -->						    
					    <div class="col-2">
							<div class="shop_head">
								<h6>
	                               	결제하기
	                            </h6>
	                        </div>
	                        <div class="shop_body" >
								<div class="total_pay">
									<h6>상품금액</h6>
									<h6>14,500원</h6>
								</div>
								<div class="total_pay">
									<h6>할인금액</h6>
									<h6>- 0원</h6>
								</div>
								<div class="total_pay">
									<h6>결제금액</h6>
									<h6>14,500원</h6>
								</div>
								<div class="total_pay_start">
									<h6>결제하기</h6>
								</div>
	                       	</div>
						</div> <!-- 결제하기 끝 -->
								    
					</div> <!-- 상품정보 끝-->
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

	<script type="text/javascript">
		$(function() {
			
			$("input[type=radio][name=pay_radio]").on("click", function() {
				
				let ckv = $(this).val();
				$.each($('.transfer_wrap').children(), function (index, el) {
					debugger;
					var attr = ckv == index ? 'block' : 'none';
					$(el).css('display', attr);
					
				});
				
			});
			
		});
		
	
	</script>
		
</body>
</html>