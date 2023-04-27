<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DropShip Admin - 고객</title>
<link rel="shortcut icon" href="admin/img/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="admin/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
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
					<h1 class="mt-4">고객 관리</h1>
					<div class="card mb-4">
						<div class="card-body">DropShip 고객을 관리하는 메뉴입니다. 원하는 회원을 클릭해서 <span style="color:red;"> 상세 정보와 주문 현황을 확인</span>할 수 있습니다.</div>
					</div>
				</div>
				<div>
					<table class="dropship_memberListTable">
						<colgroup>
							<col width="12%">
							<col width="15%">
							<col width="18%">
							<col width="25%">
							<col width="15%">
							<col width="15%">
						</colgroup>
						<tr>
							<th>회원 고유번호</th>
							<th>회원 ID</th>
							<th>회원 이름</th>
							<th>회원 E-mail</th>
							<th>회원 생일</th>
							<th>회원 가입일</th>
						</tr>
						<c:forEach items="${map.list}" var="dvo">
							<tr onClick="location.href='dropship_memberDetail?id=${dvo.id}&page=${page}'" style="cursor:pointer;">
								<td>${dvo.id}</td>
								<td>${dvo.member_login_id}</td>
								<td>${dvo.member_name}</td>
								<td>${dvo.member_email}</td>
								<td>${dvo.member_birth}</td>
								<td><fmt:formatDate value="${dvo.member_reg_date}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>	
					</table>
			<!--	PAGE 처리 부분		 -->
			<div class="bottom-paging">
				<ul class="page-numul" style="list-style:none;">
					<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></c:if>
					<c:if test="${map.page != 1}">
					<a href="dropship_memberList?page=1"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></a>
					</c:if>
					
					<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></c:if>
					<c:if test="${map.page != 1}">
					<a href="dropship_memberList?page=${map.page - 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></a>
					</c:if>
					
					<c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number">
						<c:if test="${map.page == number}">
						<li class="page-num" id="page-on">
							<div id="page-number">${number}</div>
						</li>
						</c:if>
						<c:if test="${map.page != number}">
						<li class="page-num">
							<a href="dropship_memberList?page=${number}"><div id="page-number">${number}</div></a>
						</li>
						</c:if>
					</c:forEach>
					
					<c:if test="${map.page == map.maxPage}"><li><span class="material-symbols-outlined">chevron_right</span></li></c:if>
					<c:if test="${map.page != map.maxPage}">
					<a href="dropship_memberList?page=${map.page + 1}"><li><span class="material-symbols-outlined">chevron_right</span></li></a>
					</c:if>
					
					<c:if test="${map.page == map.maxPage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></c:if>
					<c:if test="${map.page != map.maxPage}">
					<a href="dropship_memberList?page=${map.maxPage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></a>
					</c:if>
				</ul>
			</div>
			<!-- 	PAGE 처리 부분		 -->
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
