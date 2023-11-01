<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/elegant-icons.css" type="text/css">

<script>
	function logout() {
		let result = confirm("로그아웃하시겠습니까?");
		
		if(result) {
			location.href = "Logout";
		}
	}
</script>    
    
<style>
a {
	text-decoration: none;
}

</style>    

<footer id="footer">
		<div class="section group footer-service">
			<a href="" class="logo-footer">CINEPICK</a>
<%-- 			<img alt="" src="${pageContext.request.contextPath }/img/logo_footer.png"> --%>
			<ul>
				<li><a href="">회사소개</a></li>
				<li><a href="">IR</a></li>
				<li><a href="" class="loginpop">제휴/광고/부대사업 문의</a></li>
				<li><a href="" class="read1">이용약관</a></li>
				<li><a href="" class="read2" style="color: #E60012">개인정보처리방침</a></li>
				<li><a href="customer_center/cc_home.jsp">고객센터</a></li>
				<li><a href="" class="read3">배정/편성기준</a></li>
				<li><a href="">사이트맵</a></li>
			</ul>
		</div>
		<div class="section group footer-contact">
			<ul>
				<li>사업자명: 0000</li>
				<li>사업자등록번호 00000</li>
				<li>통신판매업신고번호000007</li>
				<li>대표이사 00000</li>
			</ul>
			<br>
			<ul>
				<li>00000000000</li>
				<li>개인정보책임자 00000</li>
				<li>고객센터 000000</li>
			</ul>
		</div>
		<div class="section group footer-copyright">
<!-- 			<span>Copyright ©000000000000</span> -->
		</div>
</footer>

<script src="${pageContext.request.contextPath }/resources/cinepick/js/jquery-3.7.0.js"></script>