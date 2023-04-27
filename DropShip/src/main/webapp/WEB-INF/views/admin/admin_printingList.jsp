<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DropShip Admin - 고객 관리</title>
<link rel="shortcut icon" href="admin/img/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="admin/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<%-- 	<c:if test="${result == 0}"> --%>
<!-- 		<script> -->
// 				alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
// 				location.href="admin_login";
<!-- 			</script> -->
<%-- 	</c:if> --%>
<%-- 	<c:if test="${result == 1}"> --%>
<!-- 		<script> -->
// 				alert("로그인되었습니다");
<!-- 			</script> -->
<%-- 	</c:if> --%>
<%-- 	<c:if test="${sessionAdminLoginId==null}"> --%>
<!-- 		<script> -->
// 				alert("관리자만 접근할 수 있습니다!");
// 				location.href="admin_login";
<!-- 			</script> -->
<%-- 	</c:if> --%>
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
					<h1 class="mt-4">인화주문 관리</h1>
					<div class="card mb-4">
						<div class="card-body">DropShip 인화주문을 관리하는 페이지입니다. 결제 완료된 주문을 눌러 배송처리를 진행해 주세요.</div>
					</div>
				</div>
				<div class="dropship_memberListDiv">
					<table class="dropship_memberListTable">
						<colgroup>
							<col width="15%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<tr>
							<th>주문 고유번호</th>
							<th>회원 고유 번호</th>
							<th>회원 이름</th>
							<th>주문 날짜</th>
							<th>처리 상태</th>
						</tr>
						<tr onClick="location.href='admin_printingOrderDetail'" style="cursor:pointer;">
							<td>id</td>
							<td>m_login_id</td>
							<td>m_name</td>
							<td>m_email</td>
							<td>m_reg_date</td>
						</tr>
					</table>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Team DropShip ADMIN Project</div>
						<div></div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="admin/js/datatables-simple-demo.js"></script>
</body>
</html>
