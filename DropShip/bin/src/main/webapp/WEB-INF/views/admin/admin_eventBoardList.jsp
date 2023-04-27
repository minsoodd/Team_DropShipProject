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
    <title>DropShip Admin - 이벤트</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
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
                    <h1 class="mt-4">이벤트 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 이벤트 게시판을 관리하는 메뉴입니다. 이벤트를 추가, 수정, 삭제등을 할 수 있습니다.</div>
                    </div>
                </div>
                <div class="dropship_memberListDiv">
                    <table class="dropship_listTable">
                        <colgroup>
                            <col width="10%">
                            <col width="35%">
                            <col width="15%">
                            <col width="15%">
                            <col width="15%">
                            <col width="10%">
                        </colgroup>
                        <tr>
                            <th>게시물 No.</th>
                            <th>이벤트 게시글 제목</th>
                            <th>진행 상태</th>
                            <th>작성자</th>
                            <th>게시일</th>
                            <th>조회수</th>
                        </tr>
                        <c:forEach items="${map.list}" var="eb">
	                        <tr onClick="location.href='admin_eventBoardView?id=${eb.id}&page=${map.page}'" style="cursor:pointer;">
	                            <td>${eb.id}</td>
	                             <c:if test="${eb.eventboard_file_name != null }">
	                            	<td>${eb.eventboard_title} 💾</td>
	                            </c:if>	
	                            <c:if test="${eb.eventboard_file_name == null}">
	                            	<td>${eb.eventboard_title}</td>
	                            </c:if>
	                            <c:if test="${eb.eventboard_status == '1'}">
	                            	<td style="color:blue; font-weight:bold;">진행</td>
	                            </c:if>
	                            <c:if test="${eb.eventboard_status == '0'}">
	                            	<td>종료</td>
	                            </c:if>
	                            <td>${eb.admin_name}</td>
	                            <td><fmt:formatDate value="${eb.eventboard_date}" pattern="yyyy-MM-dd HH:mm"/></td>
	                            <td>${eb.eventboard_hit}</td>
	                        </tr>
                        </c:forEach>
                    </table>
                    <!-- 			PAGE 처리 부분		 -->
					<div class="bottom-paging">
						<ul class="page-numul" style="list-style:none;">
							<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></c:if>
							<c:if test="${map.page != 1}">
							<a href="admin_eventBoardList?page=1"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></a>
							</c:if>
							
							<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></c:if>
							<c:if test="${map.page != 1}">
							<a href="admin_eventBoardList?page=${map.page - 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></a>
							</c:if>
							
							<c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number">
								<c:if test="${map.page == number}">
								<li class="page-num" id="page-on">
									<div id="page-number">${number}</div>
								</li>
								</c:if>
								<c:if test="${map.page != number}">
								<li class="page-num">
									<a href="admin_eventBoardList?page=${number}"><div id="page-number">${number}</div></a>
								</li>
								</c:if>
							</c:forEach>
							
							<c:if test="${map.page == map.maxPage}"><li><span class="material-symbols-outlined">chevron_right</span></li></c:if>
							<c:if test="${map.page != map.maxPage}">
							<a href="admin_eventBoardList?page=${map.page + 1}"><li><span class="material-symbols-outlined">chevron_right</span></li></a>
							</c:if>
							
							<c:if test="${map.page == map.maxPage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></c:if>
							<c:if test="${map.page != map.maxPage}">
							<a href="admin_eventBoardList?page=${map.maxPage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></a>
							</c:if>
						</ul>
					</div>
					<!-- 			PAGE 처리 부분		 -->
                    <div class="admin_noticeBoard_div">
                        <button type="button" onclick="location.href='admin_eventBoardAdd'" style="color:red; border-radius:5px;">이벤트 추가</button>
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