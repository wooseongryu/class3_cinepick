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
    

    <title>씨네픽 - webpage</title>

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/sb-admin-2.css" rel="stylesheet">

    <!-- admin_page_update 추가 -->
    <link href="${pageContext.request.contextPath }/resources/mypage/css/admin_page_update.css" rel="stylesheet">
    
    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    
    <!-- 씨네픽 header & footer 추가 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/cinepick/css/header_footer.css" type="text/css">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

		<!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin">
                <div class="sidebar-brand-icon rotate-n-15">
                     <img src="${pageContext.request.contextPath }/resources/mypage/img/popcorn3.png" class="popcorn">
                </div>
                <div class="sidebar-brand-text mx-3" >씨네픽 <sup>cinepick!</sup></div>
            </a>

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="admin">
                    <i class="fas fa-fw fa-user"></i>
                    <span>관리자 마이페이지</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">


            <!-- Nav Item - 내정보관리 메뉴 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>내정보관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="adminUpdate">내정보변경</a>
                        <a class="collapse-item" href="adminOut">회원탈퇴</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - 회원관리 메뉴-->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>회원관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="adminUserList">회원목록조회</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - 영화관리메뉴 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMovies"
                    aria-expanded="true" aria-controls="collapseMovies">
                    <i class="fas fa-fw fa-ticket-alt"></i>
                    <span>영화관리</span>
                </a>
                <div id="collapseMovies" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="adminMovieList">영화정보관리</a>
                        <div class="collapse-divider"></div>
                        <a class="collapse-item" href="adminScheduleList">상영시간표관리</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - 게시판관리메뉴 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>게시판관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="adminNoticeList">공지사항</a>
                        <a class="collapse-item" href="adminQNAList">자주묻는질문</a>
                        <a class="collapse-item" href="adminOneToOneList">1:1문의</a>
                        <a class="collapse-item" href="adminEventList">이벤트</a>
                        <div class="collapse-divider"></div>
                    </div>
                </div>
            </li>


<!--             Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->

    </div>
    <!-- End of Page Wrapper -->
    
    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃하시겠습니까?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
<!--                 <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div> -->
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <a class="btn btn-primary" href="adminLogout">로그아웃</a>
                </div>
            </div>
        </div>
    </div>
</body>


    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/sb-admin-2.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/datatables-demo.js"></script>


</html>