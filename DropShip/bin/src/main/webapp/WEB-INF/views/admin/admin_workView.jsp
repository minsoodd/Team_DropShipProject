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
    <title>DropShip Admin - 작품 상세 관리</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="shortcut icon" href="admin//img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	<style>
		#workImage {width: 300px; height: 300px; text-align: center; 
			display: block; margin: 50px auto;}
		.admin_workViewTable {margin: 0 auto;}
	</style>
	<script>
		
		function updateWorkBtn(){
			alert("작품 정보 수정페이지로 이동합니다.");
			location.href="admin_workUpdate?id=${workVo.getId()}";
		}//updateBtn()
		
		function deleteWorkBtn() {
			if(confirm("작품을 삭제하시겠습니까?")){
				location.href="admin/deleteWork?id=${workVo.getId()}";
				alert("작품이 삭제되었습니다.");
				location.href="admin_workList";
            }// if
        } //deleteWorkBtn()
		
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
                    <h1 class="mt-4">작품 상세 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 작품을 상세 관리하는 메뉴입니다. 작품 정보를 확인 및 추가, 수정, 삭제할 수 있습니다.</div>
                    </div>
                </div>
                
                <img src="admin/img/work/${workVo.getWork_img_url()}" id="workImage">
                
                <div class="admin_workViewTableDiv">
                    <table class="admin_workViewTable">
                	<colgroup>
                        <col width="25%">
                        <col width="75%">
                    </colgroup>
                        <tr>
                            <th>작품 고유번호</th>
                            <td>${workVo.getId()}</td>
                        </tr>
                        <tr>
                            <th>작품 이름</th>
                            <td>${workVo.getWork_name()}</td>
                        </tr>
                        <tr>
                            <th>아티스트 ID</th>
                            <td>${workVo.getArtist_id()}</td>
                        </tr>
                        <tr>
                            <th>아티스트 이름</th>
                            <td>${workVo.getArtist_name()}</td>
                        </tr>
                        <tr>
                            <th>장르</th>
                            <td>${workVo.getWork_genre()}</td>
                        </tr>
                        <tr>
                            <th>주제</th>
                            <td>${workVo.getWork_subject()}</td>
                        </tr>
                        <tr>
                            <th>작품 이미지 url</th>
                            <td>${workVo.getWork_img_url()}</td>
                        </tr>
                        <tr>
                            <th>작품 설명</th>
                            <td>${workVo.getWork_content()}</td>
                        </tr>
                        <tr>
                            <th>할인률</th>
                            <td>${workVo.getWork_sale()} %</td>
                        </tr>
                        <tr>
                            <th>베스트 여부</th>
                            <td>
                            	<c:if test="${workVo.getWork_isBest() == 0}">
	                            	베스트 아님
                            	</c:if>
                            	<c:if test="${workVo.getWork_isBest() == 1}">
	                            	베스트 
                            	</c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>작품 등록일</th>
                            <td>
                                <fmt:formatDate value="${workVo.getWork_reg_date()}" pattern="yyyy-MM-dd (EEE) HH:mm" />
                            </td>
                        </tr>
                        <tr>
                            <th>작품 원가</th>
                            <td>
                                <fmt:formatNumber value="${workVo.getWork_price()}" pattern="#,### 원" /></td>
                        </tr>
                        <tr>
                            <th>전시 위치</th>
                            <td><a href="${workVo.getWork_display_position()}" target="_blank">${workVo.getWork_display_position()}</a></td>
                        </tr>
                        <tr>
                            <th>작품 조회수</th>
                            <td>${workVo.getWork_hit()}</td>
                        </tr>
                        <tr>
                            <th>등록 관리자 고유번호</th>
                            <td>${workVo.getAdmin_id()}</td>
                        </tr>
                        <tr>
                            <th>작품 전시상태</th>
                            <td>
	                            <c:if test="${workVo.getWork_available() == 0}">
	                            	비노출
	                           	</c:if>
	                           	<c:if test="${workVo.getWork_available() == 1}">
	                            	노출
	                           	</c:if>
                            </td>
                        </tr>
                    </table><br>
                    <div class="admin_eventBoardAdd_div">
                        <button type="button" class="admin_noticeBoard_button" onclick="location.href='admin_workAdd'" style="margin: 0 0 0 600px; color:red; border-radius: 5px;">작품 추가</button>
                        <button type="button" class="admin_noticeBoard_button" onclick="updateWorkBtn()" style="color:blue; border-radius: 5px;">작품 수정</button>
                        <button type="button" class="admin_noticeBoard_button" onclick="deleteWorkBtn()" style="color:black; border-radius: 5px;">작품 삭제</button>
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