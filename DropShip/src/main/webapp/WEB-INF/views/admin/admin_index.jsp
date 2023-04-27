<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip - ADMIN</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
<!--     <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" /> -->
    <link href="../admin/css/indexstyles.css" rel="stylesheet" />
    <link href="../admin/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <!-- navBar 부분 시작 -->
    <%@ include file ="include/navBar.jsp" %>
    <!-- navBar 부분 끝 -->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <!-- sideMenu 부분 시작 -->
            <%@ include file ="include/sideMenu.jsp" %>
            <!-- sideMenu 부분 끝 -->
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">DropShip 관리자 페이지</h1>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-area me-1"></i>
                                    <a href="dropship_memberList" style="text-decoration: none;">DropShip 회원 - 고객 관리 바로가기</a>
                                </div>
                                <select name="period" id="period">
									<option value="daily" selected>일별 회원가입</option>
									<option value="weekly">준비 중</option>
									<option value="monthly">준비 중</option>
								</select>
                                <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-bar me-1"></i>
                                    <a href="admin_orderList" style="text-decoration: none;">DropShip 매출 - 주문 현황 바로가기</a>
                                </div>
                                <select name="period2" id="period2">
									<option value="daily"selected>일별 매출</option>
									<option value="weekly">준비 중</option>
									<option value="monthly">준비 중</option>
								</select>
                                <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            <strong>DropShip 가입자</strong> - <span style="color:red; font-weight:bold;">최근 가입자 중 10명을 우선</span> 보여주며, <span style="color:red; font-weight:bold;">리스트 클릭시 해당 회원 상세정보 페이지로 이동</span>합니다.
                        </div>
                        <div class="card-body">
	                       	<table style="width:100%" id="dropship_indexTable">
	                       		<colgroup>
		                            <col width="12%">
		                            <col width="12%">
		                            <col width="12%">
		                            <col width="20%">
		                            <col width="30%">
		                            <col width="15%">
		                        </colgroup>
							  <thead>
							    <tr style="background-color: #212529; color: #fff;">
							      <th>로그인 ID</th>
							      <th>이름</th>
							      <th>닉네임</th>
							      <th>이메일</th>
							      <th>주소</th>
							      <th>가입일</th>
							    </tr>
							  </thead>
							  <tbody>
								  <c:forEach items="${map.list}" var="iml">
								    <tr onClick="location.href='dropship_memberDetail?id=${iml.id}&page=${page}'" style="cursor:pointer;">
								      <td>${iml.member_login_id}</td>
								      <td>${iml.member_name}</td>
								      <td>${iml.member_nname}</td>
								      <td>${iml.member_email}</td>
								      <td>${iml.member_road}</td>
								      <td><fmt:formatDate value="${iml.member_reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
								    </tr>
								  </c:forEach>
							  </tbody>
							</table>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Team DropShip ADMIN
                            Project</div>
                        <div></div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="admin/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="admin/assets/demo/chart-area-bar-demo.js"></script>
<!--     <script src="admin/assets/demo/chart-bar-demo.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="admin/js/datatables-simple-demo.js"></script>
</body>

</html>