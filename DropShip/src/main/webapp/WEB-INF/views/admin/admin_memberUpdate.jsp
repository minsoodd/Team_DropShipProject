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
    <title>DropShip Admin - 관리자 편집</title>
    <link rel="shortcut icon" href="admin//img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script>
        function updateBtn() {
            if (confirm("해당 ADMIN 정보를 수정 하시겠습니까?")) {
            	admin_memberUpdate.submit();
            }
        }//updateBtn
        
        function deleteBtn() {
            if (confirm("해당 ADMIN을 삭제 하시겠습니까?")) {
            	location.href="admin_memberDelete?admin_login_id=${adminVo.admin_login_id}";
            }
        }//updateBtn
    </script>
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
                        <div class="card-body">Super Admin이 일반 관리자를 관리하는 메뉴입니다. <span style="color:red";>관리자 등급 및 상태를 변경</span>할 수 있습니다.</div>
                    </div>
                </div>
                <form action="admin_memberList" name="admin_memberUpdate" method="post">
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
                            <th>관리자 비밀번호</th>
                            <td>
                                <input type="password" name="admin_pw" id="admin_pw" style="width: 100%; text-align:center;" value="${adminVo.admin_pw}" readonly>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 연락처</th>
                            <td>
                                <input type="text" name="admin_phone" id="admin_phone" style="width: 100%; text-align:center;" value="${adminVo.admin_phone}">
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 등록일</th>
                            <td>
                                ${adminVo.admin_reg_date}
                            </td>
                        </tr>
                        <tr>
							<th>관리자 등급</th>
							<td>
								<input type="radio" id="true_issuper" name="admin_issuper" value="1" <c:if test="${adminVo.admin_isSuper == '1'}">checked</c:if>> 
								<label for="true_issuper">슈퍼</label> 
								<input type="radio" id="false_issuper" name="admin_issuper" value="0" <c:if test="${adminVo.admin_isSuper == '0'}">checked</c:if>>
								<label for="false_issuper">일반</label>
							</td>
						</tr>
                        <tr>
                            <th>관리자 상태</th>
                            <td>
                                <input type="radio" id="true_ban" name="admin_ban" value="0" <c:if test="${adminVo.admin_ban == '0'}">checked</c:if> />
                                <label for="true_ban">사용</label>
                                <input type="radio" id="false_ban" name="admin_ban" value="1" <c:if test="${adminVo.admin_ban == '1'}">checked</c:if> />
                                <label for="false_ban">정지</label>
                            </td>
                        </tr>
                    </table><br>
                    <div class="admin_eventBoardAdd_div">
                        <button type="button" class="admin_eventBoardAdd_button" onclick="updateBtn()" style="margin: 0 0 0 70px; color:blue; border-radius:5px;">ADMIN 수정</button>
                        <button type="button" class="admin_eventBoardAdd_button" onclick="location.href='admin_memberList'" style="margin: 0 auto; border-radius:5px;">ADMIN 리스트</button>
                        <button type="button" class="admin_eventBoardAdd_button" onclick="deleteBtn()" style="margin: 0 auto; color:red; border-radius:5px;">ADMIN 삭제</button>
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