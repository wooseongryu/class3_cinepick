<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/sb-admin-2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/styles.css" rel="stylesheet">
    
<!--     개인 css 엄성윤 -->
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/seat.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/book.css" rel="stylesheet">
    
    <!-- 좌석 바깥 부분 css -->
    <link href="${pageContext.request.contextPath }/resources/cinepick/css/book_iframe.css" rel="stylesheet">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
    
<%--     <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/seat.js"></script> --%>
    

</head>
<body class="body-iframe">

	<div id="preloder">
        <div class="loader"></div>
    </div>

	<header>
		<jsp:include page="../include/main_top.jsp"></jsp:include>
	</header>

	<input type="hidden" id="playSchdlNo" name="playSchdlNo" value="2310112202029">
	<input type="hidden" id="brchNo" name="brchNo" value="2202">
	
	<section id="layer_age_alert" class="modal-layer" style="z-index: 900"><a href="" class="focus">레이어로 포커스 이동 됨</a>
        <div class="wrap" style="width: 750px; height: 350px; margin-left: -375px; margin-top: 0px; top: 140px;">
            <header class="layer-header"> <h3 class="tit">알림</h3> </header>
            <div class="layer-con"> <div class="alert-age-layer age12"> <div class="age-box age-12"> <div class="left"> <p class="circle"></p> </div> <div class="right"> <p class="tit">12세이상관람가</p> <p class="txt"><p>만 12 세 미만의 고객님은(영,유아 포함)<br>반드시 성인 보호자의 동반하에 관람이 가능합니다.<br>(확인불가 시 입장제한)<br></p></p> </div> </div> </div></div>
            <div class="btn-group-fixed">
                <button type="button" class="button purple close-layer">확인</button>
            </div>
            <button type="button" class="btn-modal-close">레이어 닫기</button>
        </div>
    </section>
    
    <div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
	    <div class="quick-reserve">
	    <!-- quick-reserve 안에 h2, script, cti-area, seat-select-section -->
	    
	        <h2 class="tit">빠른예매</h2>
	        <!-- cti 일때만 출력 -->
			<!-- cti 일때만 출력 -->
			<div class="cti-area" style="display:none">
			    <p>이름</p>
			    <input maxlength="20" name="riaName" type="text" title="이름 출력" class="input-text a-c w120px" placeholder="이름" value="">
			
			    <p>생년월일</p>
			    <input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력" class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="">
			
			    <p>휴대폰번호</p>
			    <input maxlength="11" name="riaMobileNo" type="text" title="휴대폰번호 출력" class="input-text a-c w150px" placeholder="- 없이 입력" value="">
			
			    <p>회원</p>
			    <input name="riaMemberYn" type="text" title="회원여부 출력" class="input-text a-c w100px" value="" readyonly="readyonly">
			
				<button type="button" class="button gray ml10" login-at="N"></button>
			</div>
			
			<div class="seat-select-section">
			<!-- seat-select-section 안에 seat-section, seat-result -->
			
	            <div class="seat-section">
	            <!-- seat-section 안에 tit-uril, seat-area -->
	            
	                <div class="tit-util">
	                    <h3 class="tit small"> 관람인원선택</h3>
	                    <div class="right">
	                        <button type="button" class="button gray-line small" id="seatMemberCntInit"> <i class="iconset ico-reset-small"></i>초기화</button>
	                    </div>
	                </div>
	              	<!-- tit-util 끝 -->
	                
	                <div class="seat-area">
	                
	                   <div class="seat-count" style="min-height: 52px">
						    <div class="cell">
						        <p class="txt">성인</p>
						        <div class="count">
						            <button type="button" class="down" title="성인 좌석 선택 감소">-</button>
						            <div class="number">
						                <button type="button" class="now" title="성인 현재 좌석 선택 수" ticketgrpcd="TKA">0</button>
<!-- 						                <ul class="num-choice"> -->
<!-- 						                    <li> -->
<!-- 						                        <button type="button" class="btn" value="0"></button> -->
<!-- 						                    </li> -->
<!-- 						                </ul> -->
						            </div>
						            <button type="button" class="up" title="성인 좌석 선택 증가">+</button>
						        </div>
						    </div>
						    <div class="cell">
						        <p class="txt">청소년</p>
						        <div class="count">
						            <button type="button" class="down" title="청소년 좌석 선택 감소">-</button>
						            <div class="number">
						                <button type="button" class="now" title="청소년 현재 좌석 선택 수" ticketgrpcd="TKY">0</button>
<!-- 						                <ul class="num-choice"> -->
<!-- 						                    <li> -->
<!-- 						                        <button type="button" class="btn on">0</button> -->
<!-- 						                    </li> -->
<!-- 						                </ul> -->
						            </div>
						            <button type="button" class="up" title="청소년 좌석 선택 증가">+</button>
						        </div>
						    </div>
						    <div class="cell">
						        <p class="txt">우대</p>
						        <div class="count">
						            <button type="button" class="down" title="우대 좌석 선택 감소">-</button>
						            <div class="number">
						                <button type="button" class="now" title="우대 현재 좌석 선택 수" ticketgrpcd="TKS">0</button>
<!-- 						                <ul class="num-choice"> -->
<!-- 						                    <li> -->
<!-- 						                        <button type="button" class="btn on">0</button> -->
<!-- 						                    </li> -->
<!-- 						                </ul> -->
						            </div>
						            <button type="button" class="up" title="우대 좌석 선택 증가">+</button>
						        </div>
						    </div>
						</div>
	                   
	                   
	                    <div class="seat-layout">
	                        <div class="alert" style="display: none;"></div>
	                        <div class="seat-count-before off" style="top: 0px">관람인원을 선택하십시요</div>
	                        <div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px; height: 210px;" dir="ltr">
	                            <div id="seatLayout" style="width: 100%; height: 210px;">
	                                <img src="https://www.megabox.co.kr/static/pc/images/reserve/img-theater-screen.png" alt="screen" style="position: absolute; left: 62px; top: 10px;" class="mCS_img_loaded">
<!-- 	                            <div class'row'="">  <button type="button" class="btn-seat-row" title="A 행" style="position:absolute; left:226px; top:52px;">A</button><button type="button" title="A1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100101" rownm="A" seatno="1" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100201" rownm="A" seatno="2" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100401" rownm="A" seatno="3" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100501" rownm="A" seatno="4" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100601" rownm="A" seatno="5" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100701" rownm="A" seatno="6" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100801" rownm="A" seatno="7" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100901" rownm="A" seatno="8" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101001" rownm="A" seatno="9" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101201" rownm="A" seatno="10" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P"><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="A11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101301" rownm="A" seatno="11" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P"><span class="num">11</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button>  <button type="button" class="btn-seat-row" title="B 행" style="position:absolute; left:226px; top:72px;">B</button><button type="button" title="B1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200101" rownm="B" seatno="1" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200201" rownm="B" seatno="2" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200401" rownm="B" seatno="3" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200501" rownm="B" seatno="4" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200601" rownm="B" seatno="5" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200701" rownm="B" seatno="6" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200801" rownm="B" seatno="7" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200901" rownm="B" seatno="8" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201001" rownm="B" seatno="9" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201201" rownm="B" seatno="10" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P"><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="B11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201301" rownm="B" seatno="11" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P"><span class="num">11</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button>  <button type="button" class="btn-seat-row" title="C 행" style="position:absolute; left:226px; top:92px;">C</button><button type="button" title="C1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300101" rownm="C" seatno="1" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300201" rownm="C" seatno="2" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300401" rownm="C" seatno="3" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300501" rownm="C" seatno="4" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300601" rownm="C" seatno="5" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300701" rownm="C" seatno="6" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300801" rownm="C" seatno="7" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300901" rownm="C" seatno="8" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301001" rownm="C" seatno="9" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301201" rownm="C" seatno="10" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P"><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="C11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301301" rownm="C" seatno="11" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P"><span class="num">11</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button>  <button type="button" class="btn-seat-row" title="D 행" style="position:absolute; left:226px; top:112px;">D</button><button type="button" title="D1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400101" rownm="D" seatno="1" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400201" rownm="D" seatno="2" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400401" rownm="D" seatno="3" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400501" rownm="D" seatno="4" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400601" rownm="D" seatno="5" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400701" rownm="D" seatno="6" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400801" rownm="D" seatno="7" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400901" rownm="D" seatno="8" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401001" rownm="D" seatno="9" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401201" rownm="D" seatno="10" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P"><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="D11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401301" rownm="D" seatno="11" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P"><span class="num">11</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button>  <button type="button" class="btn-seat-row" title="E 행" style="position:absolute; left:226px; top:132px;">E</button><button type="button" title="E1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500101" rownm="E" seatno="1" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500201" rownm="E" seatno="2" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500401" rownm="E" seatno="3" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500501" rownm="E" seatno="4" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500601" rownm="E" seatno="5" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500701" rownm="E" seatno="6" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500801" rownm="E" seatno="7" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500901" rownm="E" seatno="8" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501001" rownm="E" seatno="9" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501201" rownm="E" seatno="10" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P"><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="E11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501301" rownm="E" seatno="11" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P"><span class="num">11</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button>  <button type="button" class="btn-seat-row" title="F 행" style="position:absolute; left:226px; top:152px;">F</button><button type="button" title="F1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600101" rownm="F" seatno="1" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600201" rownm="F" seatno="2" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600401" rownm="F" seatno="3" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600501" rownm="F" seatno="4" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600601" rownm="F" seatno="5" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600701" rownm="F" seatno="6" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600801" rownm="F" seatno="7" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600901" rownm="F" seatno="8" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601001" rownm="F" seatno="9" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601201" rownm="F" seatno="10" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P"><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="F11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601301" rownm="F" seatno="11" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P"><span class="num">11</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button>  <button type="button" class="btn-seat-row" title="G 행" style="position:absolute; left:226px; top:172px;">G</button><button type="button" title="G1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700101" rownm="G" seatno="1" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="1" seattocnt="1" nextord="N"><span class="num">1</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700201" rownm="G" seatno="2" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="2" seattocnt="1" nextord="P"><span class="num">2</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700401" rownm="G" seatno="3" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="3" seattocnt="1" nextord="N"><span class="num">3</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700501" rownm="G" seatno="4" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="4" seattocnt="1" nextord="P"><span class="num">4</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700601" rownm="G" seatno="5" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="5" seattocnt="1" nextord="N"><span class="num">5</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700701" rownm="G" seatno="6" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="6" seattocnt="1" nextord="P"><span class="num">6</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700801" rownm="G" seatno="7" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="7" seattocnt="1" nextord="N"><span class="num">7</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700901" rownm="G" seatno="8" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="8" seattocnt="1" nextord="P"><span class="num">8</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701001" rownm="G" seatno="9" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="9" seattocnt="1" nextord="P"><span class="num">9</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">일반</span></button><button type="button" title="G10 (스탠다드/장애인석)" class="jq-tooltip seat-condition standard disabled" style="position:absolute; left:511px; top:170px; width:40px;" seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701201" rownm="G" seatno="10" seatchoidircval="1" seatchoigrpno="7" seatchoigrpnm="G7" seatchoirowcnt="1" seatchoigrpseq="1" seattocnt="1" seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다."><span class="num">10</span><span class="kind">스탠다드</span><span class="condition">판매가능</span><span class="rank">장애인석</span></button></div>  -->
								
									<div class="row">

										<button type="button" class="btn-seat-row" title="A 행" style="position:absolute; left:226px; top:52px;">A</button>
										<button type="button" title="A1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100101" rownm="A" seatno="1" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100201" rownm="A" seatno="2" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100401" rownm="A" seatno="3" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100501" rownm="A" seatno="4" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100601" rownm="A" seatno="5" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100701" rownm="A" seatno="6" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100801" rownm="A" seatno="7" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100901" rownm="A" seatno="8" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101001" rownm="A" seatno="9" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101201" rownm="A" seatno="10" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="A11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00101301" rownm="A" seatno="11" seatchoidircval="1" seatchoigrpno="1" seatchoigrpnm="A1" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P">	<span class="num">11</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										  <button type="button" class="btn-seat-row" title="B 행" style="position:absolute; left:226px; top:72px;">B</button>
<!-- 									<button type="button" title="B1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common finish" style="position:absolute; left:271px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200101" rownm="B" seatno="1" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span> -->
										<button type="button" title="B1 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:271px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200101" rownm="B" seatno="1" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B2 (스탠다드/일반)" class="jq-tooltip seat-condition standard view finish" style="position:absolute; left:291px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200201" rownm="B" seatno="2" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200401" rownm="B" seatno="3" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200501" rownm="B" seatno="4" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200601" rownm="B" seatno="5" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200701" rownm="B" seatno="6" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200801" rownm="B" seatno="7" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200901" rownm="B" seatno="8" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201001" rownm="B" seatno="9" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201201" rownm="B" seatno="10" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="B11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00201301" rownm="B" seatno="11" seatchoidircval="1" seatchoigrpno="2" seatchoigrpnm="B2" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P">	<span class="num">11</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										  <button type="button" class="btn-seat-row" title="C 행" style="position:absolute; left:226px; top:92px;">C</button>
										<button type="button" title="C1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300101" rownm="C" seatno="1" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300201" rownm="C" seatno="2" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300401" rownm="C" seatno="3" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300501" rownm="C" seatno="4" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300601" rownm="C" seatno="5" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300701" rownm="C" seatno="6" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300801" rownm="C" seatno="7" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300901" rownm="C" seatno="8" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301001" rownm="C" seatno="9" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301201" rownm="C" seatno="10" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="C11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00301301" rownm="C" seatno="11" seatchoidircval="1" seatchoigrpno="3" seatchoigrpnm="C3" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P">	<span class="num">11</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										  <button type="button" class="btn-seat-row" title="D 행" style="position:absolute; left:226px; top:112px;">D</button>
										<button type="button" title="D1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400101" rownm="D" seatno="1" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400201" rownm="D" seatno="2" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400401" rownm="D" seatno="3" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400501" rownm="D" seatno="4" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400601" rownm="D" seatno="5" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400701" rownm="D" seatno="6" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400801" rownm="D" seatno="7" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400901" rownm="D" seatno="8" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401001" rownm="D" seatno="9" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401201" rownm="D" seatno="10" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="D11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00401301" rownm="D" seatno="11" seatchoidircval="1" seatchoigrpno="4" seatchoigrpnm="D4" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P">	<span class="num">11</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										  <button type="button" class="btn-seat-row" title="E 행" style="position:absolute; left:226px; top:132px;">E</button>
										<button type="button" title="E1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500101" rownm="E" seatno="1" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500201" rownm="E" seatno="2" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500401" rownm="E" seatno="3" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500501" rownm="E" seatno="4" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500601" rownm="E" seatno="5" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500701" rownm="E" seatno="6" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500801" rownm="E" seatno="7" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500901" rownm="E" seatno="8" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501001" rownm="E" seatno="9" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501201" rownm="E" seatno="10" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="E11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00501301" rownm="E" seatno="11" seatchoidircval="1" seatchoigrpno="5" seatchoigrpnm="E5" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P">	<span class="num">11</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										  <button type="button" class="btn-seat-row" title="F 행" style="position:absolute; left:226px; top:152px;">F</button>
										<button type="button" title="F1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600101" rownm="F" seatno="1" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600201" rownm="F" seatno="2" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600401" rownm="F" seatno="3" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600501" rownm="F" seatno="4" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600601" rownm="F" seatno="5" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600701" rownm="F" seatno="6" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600801" rownm="F" seatno="7" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600901" rownm="F" seatno="8" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601001" rownm="F" seatno="9" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="9" seattocnt="1" nextord="N">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F10 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:511px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601201" rownm="F" seatno="10" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="10" seattocnt="1" nextord="P">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="F11 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:531px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00601301" rownm="F" seatno="11" seatchoidircval="1" seatchoigrpno="6" seatchoigrpnm="F6" seatchoirowcnt="11" seatchoigrpseq="11" seattocnt="1" nextord="P">	<span class="num">11</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										  <button type="button" class="btn-seat-row" title="G 행" style="position:absolute; left:226px; top:172px;">G</button>
										<button type="button" title="G1 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:271px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700101" rownm="G" seatno="1" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="1" seattocnt="1" nextord="N">	<span class="num">1</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G2 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:291px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700201" rownm="G" seatno="2" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="2" seattocnt="1" nextord="P">	<span class="num">2</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:341px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700401" rownm="G" seatno="3" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="3" seattocnt="1" nextord="N">	<span class="num">3</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:361px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700501" rownm="G" seatno="4" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="4" seattocnt="1" nextord="P">	<span class="num">4</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:381px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700601" rownm="G" seatno="5" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="5" seattocnt="1" nextord="N">	<span class="num">5</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:401px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700701" rownm="G" seatno="6" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="6" seattocnt="1" nextord="P">	<span class="num">6</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G7 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:421px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700801" rownm="G" seatno="7" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="7" seattocnt="1" nextord="N">	<span class="num">7</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G8 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:441px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700901" rownm="G" seatno="8" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="8" seattocnt="1" nextord="P">	<span class="num">8</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G9 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:461px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701001" rownm="G" seatno="9" seatchoidircval="1" seatchoigrpno="8" seatchoigrpnm="G8" seatchoirowcnt="9" seatchoigrpseq="9" seattocnt="1" nextord="P">	<span class="num">9</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">일반</span>
										</button>
										<button type="button" title="G10 (스탠다드/장애인석)" class="jq-tooltip seat-condition standard disabled" style="position:absolute; left:511px; top:170px; width:40px;" seatclasscd="DISABLED_CLS" seatzonecd="GERN_ZONE" seatuniqno="00701201" rownm="G" seatno="10" seatchoidircval="1" seatchoigrpno="7" seatchoigrpnm="G7" seatchoirowcnt="1" seatchoigrpseq="1" seattocnt="1" seatnotimsg="해당좌석은 장애인 전용 좌석으로 일반고객은 다른 좌석을 선택하여  주시기 바랍니다.">	<span class="num">10</span>
											<span class="kind">스탠다드</span>
											<span class="condition">판매가능</span>
											<span class="rank">장애인석</span>
										</button>
										
									</div>

<!-- 		                            <img src="/static/pc/images/reserve/img-door-left.png" alt="좌측 출입구" style="position:absolute; left:271px; top:30px; width:16px; height: 16px;" class="mCS_img_loaded">  -->
<!-- 		                            <img src="/static/pc/images/reserve/img-door-right.png" alt="우측좌측 출입구" style="position:absolute; left:271px; top:190px; width:16px; height: 16px;" class="mCS_img_loaded"> -->
	                           		<img src="https://www.megabox.co.kr/static/pc/images/reserve/img-door-right.png" alt="우측 출입구" style="position:absolute; left:521px; top:30px; width:16px; height: 16px;" class="mCS_img_loaded">
               						<img src="https://www.megabox.co.kr/static/pc/images/reserve/img-door-left.png" alt="좌측우측 출입구" style="position:absolute; left:521px; top:192px; width:16px; height: 16px;" class="mCS_img_loaded">
	                            </div>
	                        </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; height: 732px; top: 0px; max-height: 382px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
	                    </div>
	                    <div class="zone-legend" style="display: none"></div>
	                </div>
	                <!-- seat-area 끝 -->
	                
	            </div>
	            <!-- seat-section 끝 -->
	            
                <div class="seat-result">
                <!-- seat-result 안에 wrap -->
                
                    <div class="wrap">
                    <!-- wrap 안에 tit-area, info-area, choice-seat-area, pay-area, btn-group -->
                    
                        <div class="tit-area">
                            <span class="movie-grade small age-all age-12">12세이상관람가</span>
                            <p class="tit">천박사 퇴마 연구소: 설경의 비밀</p>
                            <p class="cate">2D</p>
                        </div>
                        <!-- tit-area 끝 -->
                        
                        <div class="info-area">
                            <p class="theater">원주센트럴</p>
                            <p class="special">컴포트7관_리클라이너</p>
                            <p class="date"><span>2023.10.11</span><em>(수)</em></p>
                            <div class="other-time">
                                <button type="button" class="nows">12:35~14:23<i class="arr"></i></button>
                                <ul class="other"><li><button type="button" choicnt="71" playschdlno="2310112202028" class="btn ">10:30~12:18</button></li><li><button type="button" choicnt="76" playschdlno="2310112202029" class="btn on ">12:35~14:23</button></li><li><button type="button" choicnt="76" playschdlno="2310112202030" class="btn ">14:50~16:38</button></li><li><button type="button" choicnt="76" playschdlno="2310112202046" class="btn ">16:05~17:53</button></li><li><button type="button" choicnt="76" playschdlno="2310112202031" class="btn ">17:05~18:53</button></li><li><button type="button" choicnt="76" playschdlno="2310112202032" class="btn ">19:10~20:58</button></li><li><button type="button" choicnt="76" playschdlno="2310112202048" class="btn ">20:25~22:13</button></li><li><button type="button" choicnt="76" playschdlno="2310112202033" class="btn ">21:15~23:03</button></li></ul>
                            </div>
                            <p class="poster">
                                <img src="https://www.megabox.co.kr/SharedImg/2023/09/27/7ML6Wyigjy8Nz7bM8yr0zWW2AEfpAM8Y_150.jpg" onerror="noImg(this);" alt="천박사 퇴마 연구소: 설경의 비밀">
                            </p>
                        </div>
                        <!-- info-area 끝 -->
                        
                        <div class="choice-seat-area">
                            <div class="legend">
                                <ul class="list"> <li><div class="seat-condition choice" title="선택한 좌석"></div> <em>선택</em></li> <li><div class="seat-condition finish" title="예매 완료"></div> <em>예매완료</em></li> <li><div class="seat-condition impossible" title="선택 불가"></div> <em>선택불가</em></li> <li><div class="seat-condition common" title="일반"></div> <em> 일반</em></li>  <li><div class="seat-condition disabled" title="장애인석"></div> <em> 장애인석</em></li></ul>
                            </div>
                            <div class="seat-num">
                                <p class="tit">선택좌석</p>
                                <div class="my-seat">
                                    <div class="seat possible" title="선택할 수 있는 좌석">-</div>
                                    <div class="seat possible" title="선택할 수 있는 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                    <div class="seat all" title="구매가능 좌석">-</div>
                                </div>
                            </div>
                        </div>
                        <!-- choice-seat-area 끝 -->
                        
                        <div class="pay-area">
                            <p class="count"></p>
                            <div class="pay">
                                <p class="tit">최종결제금액</p>
                                <div class="money">
                                    <em>0</em> <span>원</span>
                                </div>
                            </div>
                        </div>
                        <!-- pay-area 끝 -->
                        
                        <div class="btn-group">
                            <a href="javaScript:void(0)" class="button" id="pagePrevious" title="이전" onclick="location.href='bookingStepOne'">이전</a>
                            <a href="javaScript:void(0)" class="button disabled" id="pageNext" title="다음" onclick="location.href='bookingStepThree'">다음</a>
                        </div>
                        <!-- btn-group 끝 -->
                        
                    </div>
                    <!-- wrap 끝 -->
                    
                </div>
                <!-- seat-result 끝 -->
                
			</div>
			<!-- seat-select-section 끝 -->
			
		</div>
		<!-- quick-reserve 끝 -->
		
	</div>
	<!-- inner-wrap 끝 -->
	
	<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
	<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
	<div>
		<div class="grecaptcha-badge" data-style="bottomright" style="width: 256px; height: 60px; display: block; transition: right 0.3s ease 0s; position: fixed; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;"><div class="grecaptcha-logo"><iframe title="reCAPTCHA" width="256" height="60" role="presentation" name="a-r7f75ecn82du" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox allow-storage-access-by-user-activation" src="https://www.google.com/recaptcha/api2/anchor?ar=2&amp;k=6LdAbVknAAAAAB3N3xMIgbKOYdEJv6E4isZ2x0Mq&amp;co=aHR0cHM6Ly93d3cubWVnYWJveC5jby5rcjo0NDM.&amp;hl=ko&amp;v=lLirU0na9roYU3wDDisGJEVT&amp;size=invisible&amp;cb=9nsd8bt01kjd"></iframe></div><div class="grecaptcha-error"></div><textarea id="g-recaptcha-response-100000" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div>
		<iframe style="display: none;"></iframe>
	</div>
	
   	<footer>
		<jsp:include page="../include/main_footer.jsp"></jsp:include>
	</footer>
	
    <script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/main.js"></script>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/seat.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/seat_test.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/seat_testing/seat1.js"></script> --%>
	<script src="${pageContext.request.contextPath }/resources/cinepick/js/seat_testing/seat2.js"></script>
	
	

</body>
</html>