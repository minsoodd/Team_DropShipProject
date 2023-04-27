<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  	
<c:if test="${sessionAdminLoginId == null}">
	<script>
		alert("관리자만 접근할 수 있습니다!");
		location.href="admin_login";
	</script>
</c:if>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<!-- Navbar Brand-->
	<a class="navbar-brand ps-3" href="admin_index">DropShip ADMIN</a>
	<!-- Sidebar Toggle-->
	<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
		id="sidebarToggle" href="#!">
		<i class="fas fa-bars"></i>
	</button>
	<!-- Navbar Search-->
	<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
		<div class="input-group"><img src="admin/img/topnav.png"></div>
	</form>
	<!-- Navbar-->
	<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
			aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
			<ul class="dropdown-menu dropdown-menu-end"
				aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" onClick="location.href='admin_memberUpdatePW?admin_login_id=${sessionAdminLoginId}'" style="cursor:pointer;">비밀번호	변경</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="admin_logout">로그아웃</a></li>
			</ul></li>
	</ul>
</nav>