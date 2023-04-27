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
    <title>DropShip Admin - 이벤트</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<script>
    function eventAddBtn() {
        if ($("#eventboard_title").val() == "") {
            alert("이벤트 제목을 반드시 입력해야합니다!");
            $("#eventboard_title").focus();
            return;
        }

        if (confirm("해당 이벤트를 추가하시겠습니까?")) {
        	eventBoardAddFrm.submit();
        }
    }
</script>

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
                    <h1 class="mt-4">이벤트 등록하기</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 이벤트 게시판을 관리하는 메뉴입니다. 이벤트를 등록할 수 있습니다.</div>
                    </div>
                </div>
                <div>
                    <table class="admin_eventBoardAdd">
                        <form action="eventBoardAdd" name="eventBoardAddFrm" method="post" enctype="multipart/form-data">
                            <colgroup>
                                <col width="25%">
                                <col width="75%">
                            </colgroup>
                            <tr>
                                <th><label for="eventboard_title">이벤트 제목</label></th>
                                <td><input type="text" id="eventboard_title" name="eventboard_title" style="width:100%;" required><br></td>
                            </tr>
                            <tr>
                            	<th>상단 등록</th>
	                            <td>
	                            	<input type="radio" id="true" name="eventboard_istop" value="1">
	                                <label for="true">등록</label>
	                                <input type="radio" id="false" name="eventboard_istop" value="0" checked>
	                                <label for="false">해제</label>
	                            </td>
                       		</tr>
                            <tr>
                            	<th>이벤트 상태</th>
	                            <td>
	                            	<input type="radio" id="true" name="eventboard_status" value="1" checked>
	                                <label for="true">진행</label>
	                                <input type="radio" id="false" name="eventboard_status" value="0">
	                                <label for="false">종료</label>
	                            </td>
                       		</tr>
                            <tr>
                                <th><label for="eventboard_start">이벤트 시작</label></th>
                                <td>
                                    <input type="datetime-local" id="eventboard_start" name="eventboard_start" style="width:50%;">
                                </td>
                            </tr>
                            <tr>
                                <th><label for="eventboard_end">이벤트 종료</label></th>
                                <td>
                                    <input type="datetime-local" id="eventboard_end" name="eventboard_end" style="width:50%;">
                                </td>
                            </tr>
                            <tr>
                                <th><label for="eventboard_content">이벤트 내용</label></th>
                                <td>
                                    <textarea id="eventboard_content" name="eventboard_content" cols="50" rows="10" style="width:100%;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="eventboard_file_name">첨부 파일(이미지)</label></th>
                                <td><input type="file" id="eventboard_file_name" name="file" style="width:100%;"></td>
                            </tr>
                        </form>
                    </table><br>
                    <div classs="admin_eventBoardAdd_div">
                        <button type="button" class="admin_eventBoardAdd_button" onClick="eventAddBtn()" style="margin: 0 0 0 500px; color:red; border-radius:5px;">이벤트 추가</button>
                        <button type="button" class="admin_eventBoardAdd_button" onClick="location.href='admin_eventBoardList'" style="margin: 0 auto; border-radius:5px;">이벤트 리스트</button>
                    </div>
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