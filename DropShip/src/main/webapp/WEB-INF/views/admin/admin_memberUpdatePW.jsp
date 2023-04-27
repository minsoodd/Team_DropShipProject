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
    <title>DropShip Admin - 비번 수정</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <c:if test="${sessionAdminLoginId != adminVo.admin_login_id}">
        <script>
            alert("타인의 계정은 접근할 수 없습니다!");
            location.href = "admin_index";
        </script>
    </c:if>
    <script>
        function updatePwBtn() {
            var pw = $("#admin_pw").val();
            var pw2 = $("#admin_pw2").val();

            if (pw != pw2) {
                alert("동일한 비밀번호를 입력해야합니다!");
                $("#admin_pw2").val("").focus();
                return;
            }

            if (confirm("PW를 수정 하시겠습니까?")) {
            	admin_memberUpdatePW.submit();
            }
        }
    </script>
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
                    <h1 class="mt-4">관리자 설정</h1>
                    <div class="card mb-4">
                        <div class="card-body">ADMIN 계정의 비밀번호만 변경할 수 있는 페이지입니다.</div>
                    </div>
                </div>
                <form action="admin_memberPW" name="admin_memberUpdatePW" method="post">
                    <table class="admin_memberAddTableDiv">
                        <tr>
                            <th>관리자 이름</th>
                            <td>
                                ${adminVo.admin_name}
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 로그인 아이디</th>
                            <td>
								<input type="hidden" name="admin_login_id" id="admin_login_id" style="width: 100%; text-align:center;" value="${adminVo.admin_login_id}" required>                            
                                ${adminVo.admin_login_id}
                            </td>
                        </tr>
                        <tr>
                            <th>변경할 비밀번호</th>
                            <td>
                                <input type="text" name="admin_pw" id="admin_pw" style="width: 100%; text-align:center;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>변경할 비밀번호 확인</th>
                            <td>
                                <input type="text" name="admin_pw2" id="admin_pw2" style="width: 100%; text-align:center;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 연락처</th>
                            <td>
                                ${adminVo.admin_phone}
                            </td>
                        </tr>
                    </table><br>
                    <div class="admin_eventBoardAdd_div">
                        <button type="button" onclick="updatePwBtn()" style="color:red; border-radius:5px; margin-left:270px;">PW 수정</button>
                    </div>
                </form>
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