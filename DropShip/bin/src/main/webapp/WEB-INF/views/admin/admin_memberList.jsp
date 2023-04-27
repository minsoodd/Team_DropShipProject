<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 관리자 설정</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<c:if test="${sessionSuperAdmin != 1}">
    <script>
        alert("슈퍼 관리자만 접근할 수 있습니다!");
        location.href = "admin_index";
    </script>
</c:if>

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
                    <h1 class="mt-4">관리자 설정</h1>
                    <div class="card mb-4">
                        <div class="card-body">Super Admin이 일반 관리자를 관리하는 메뉴입니다. 관리자를 추가, 수정, 삭제할 수 있습니다.</div>
                    </div>
                </div>
                <div class="admin_memberListTableDiv">
                    <table class="admin_memberListTable">
                        <colgroup>
                            <col width="13%">
                            <col width="13%">
                            <col width="15%">
                            <col width="18%">
                            <col width="15%">
                            <col width="13%">
                            <col width="13%">
                        </colgroup>
                        <tr>
                            <th>관리자 번호</th>
                            <th>관리자 ID</th>
                            <th>관리자 이름</th>
                            <th>관리자 연락처</th>
                            <th>관리자 등록일</th>
                            <th>관리자 등급</th>
                            <th>관리자 상태</th>
                        </tr>
                        <c:forEach items="${map.list}" var="adminVo">
                            <tr onClick="location.href='admin_memberUpdate?id=${adminVo.id}'" style="cursor:pointer;">
                                <td>${adminVo.id}</td>
                                <td>
                                	${adminVo.admin_login_id}
                                </td>
                                <td>${adminVo.admin_name}</td>
                                <td>${adminVo.admin_phone}</td>
                                <td>${adminVo.admin_reg_date}</td>
                                <c:if test="${adminVo.admin_isSuper == 1}">
                                    <td style="color:blue; font-weight:bold;">슈퍼</td>
                                </c:if>
                                <c:if test="${adminVo.admin_isSuper == 0}">
                                    <td style="font-weight:bold;">일반</td>
                                </c:if>
                                <c:if test="${adminVo.admin_ban == 0}">
                                    <td style="color:blue; font-weight:bold;">정상</td>
                                </c:if>
                                <c:if test="${adminVo.admin_ban == 1}">
                                    <td style="color:red; font-weight:bold;">정지</td>
                                </c:if>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <div class="button-wrapper">
                    <a href="admin_memberAdd"><button type="button" style="color:red; border-radius: 5px;">ADMIN 추가</button></a>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="admin/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="admin/js/datatables-simple-demo.js"></script>
</body>

</html>