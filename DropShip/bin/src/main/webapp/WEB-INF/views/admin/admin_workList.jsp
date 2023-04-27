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
    <title>DropShip Admin - 작품 관리</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="shortcut icon" href="admin//img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	
    <script>
	 	// <tr>태그 누르는 거랑 '삭제' 버튼 누를때 링크 다르게 하려고
		var flag = 0;
    
        function deleteWorkBtn(id) {
        	// flag 가 1 -> 삭제버튼만 작동(<tr>태그 누르는 링크 작동 안하게)
			flag = 1;
        	
            if(confirm(id + "번 작품을 삭제하시겠습니까?")){
	            $.ajax({
	                url: 'deleteWork',
	                type: "POST",
	                data: {'id': id},
	                success: function(data) {
	                    alert(id + "번 작품 삭제 성공");
	                    location.href = "admin_workList";
	                    flag = 0;
	                },
	                error: function() {
	                    alert("실패");
	                }
	            }); //ajax
            }// if
        } //deleteWorkBtn()
        
        //<tr>태그 누를 때 작품 상세페이지로 이동하는 함수
        function workView(id){
			if(flag == 0){
				location.href='admin_workView?id='+id;
			}
		}// workView()
    </script>
</head>

<body class="sb-nav-fixed">
    <c:if test="${result == 0}">
        <script>
            alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
            location.href = "admin_login";
        </script>
    </c:if>
    <c:if test="${result == 1}">
        <script>
            alert("로그인되었습니다");
        </script>
    </c:if>
    <c:if test="${sessionAdminLoginId==null}">
        <script>
            alert("관리자만 접근할 수 있습니다!");
            location.href = "admin_login";
        </script>
    </c:if>
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
                    <h1 class="mt-4">작품 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 작품을 관리하는 메뉴입니다. 작품을 등록, 수정, 삭제할 수 있습니다.&nbsp; <span style="color:red;">작품 리스트를 클릭하면 수정 페이지로 이동합니다.</span></div>
                    </div>
                </div>
                <div class="admin_customerListDiv" style="margin-left:24px;">
                    <table class="admin_workListTable">
                        <colgroup>
						  <col width="5%">
						  <col width="20%">
						  <col width="15%">
						  <col width="5%">
						  <col width="8%">
						  <col width="7%">
						  <col width="7%">
						  <col width="7%">
						  <col width="15%">
						  <col width="5%">
						</colgroup>
                        <tr>
                            <th>작품 ID</th>
                            <th>작품 이름</th>
                            <th>작가 이름</th>
                            <th>작가 ID</th>
                            <th>가격</th>
                            <th>AI 생성여부</th>
                            <th>전시 여부</th>
                            <th>베스트 여부</th>
                            <th>등록일</th>
                            <th>삭제</th>
                        </tr>
                        <c:forEach items="${list}" var="workVo">
                            <tr onclick="workView(${workVo.getId()})" style="cursor:pointer;">
                                <td>${workVo.getId()}</td>
                                <td>${workVo.getWork_name()}</td>
                                <td>${workVo.getArtist_name()}</td>
                                <td>${workVo.getArtist_id()}</td>
                                <td>
                                    <fmt:formatNumber value="${workVo.work_price}" type="number" pattern="#,##0 원" />
                                </td>
                                <td>
		                            <c:if test="${workVo.work_is_ai == 0}">
		                            	X
		                           	</c:if>
		                           	<c:if test="${workVo.work_is_ai == 1}">
		                            	O
		                           	</c:if>
                                </td>
                                <td>
		                            <c:if test="${workVo.getWork_available() == 0}">
		                            	X
		                           	</c:if>
		                           	<c:if test="${workVo.getWork_available() == 1}">
		                            	O
		                           	</c:if>
                           	    </td>
                                <td>
	                            	<c:if test="${workVo.getWork_isBest() == 0}">
		                            	X
	                            	</c:if>
	                            	<c:if test="${workVo.getWork_isBest() == 1}">
		                            	베스트 
	                            	</c:if>
	                            </td>
                                <td>
                                    <fmt:formatDate value="${workVo.getWork_reg_date()}" pattern="yyyy-MM-dd (EEE) HH:mm" />
                                </td>
                                <td><button class="delete-button" id="deleteWork" onclick="deleteWorkBtn(${workVo.getId()})">삭제</button></td>
                            </tr>
                        </c:forEach>
                    </table><br>
                    <div class="admin_noticeBoard_div">
                        <button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_workAdd'" style="margin-left: 550px; color:red; border-radius: 5px;">작품 추가</button>
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