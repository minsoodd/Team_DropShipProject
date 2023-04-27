<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 공지</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	<link href="admin/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
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
                    <h1 class="mt-4">게시판 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 사이트 게시판을 관리하는 메뉴입니다. 자유, 후기, 질답 게시판을 확인할 수 있습니다.</div>
                    </div>
                </div>
                <div class="dropship_memberListDiv">
                    <table class="dropship_memberListTable">
                        <colgroup>
                            <col width="10%">
                            <col width="10%">
                            <col width="30%">
                            <col width="15%">
                            <col width="15%">
                            <col width="10%">
                            <col width="10%">
                        </colgroup>
                        <tr>
                            <th>게시글 종류</th>
                            <th>게시물 No.</th>
                            <th>게시글 제목</th>
                            <th>작성자</th>
                            <th>조회수</th>
                            <th>게시일</th>
                            <th>게시글 상태</th>
                        </tr>
                        <c:forEach items="${map.list}" var="bvo">
                        
                        	<tr onClick="location.href='admin_freeBoardView?id=${bvo.id}'" style="cursor:pointer;">
								<c:if test="${bvo.freeBoard_head == 0}">
									<td class="td-num">자유</td>
								</c:if>
								<c:if test="${bvo.freeBoard_head == 1}">
									<td class="td-num">후기</td>
								</c:if>
								<c:if test="${bvo.freeBoard_head == 2}">
									<td class="td-num">질답</td>
								</c:if>
								<td class="td-num">${bvo.id}</td>
								<td class="td-subject" >
										${bvo.freeBoard_title}</td>
								<c:if test="${bvo.member_id==null}">
									<td class="td-name td-mb-hide">${bvo.admin_id}</td>
								</c:if>
								<c:if test="${bvo.member_id!=null}">
									<td class="td-name td-mb-hide">${bvo.member_name}</td>
								</c:if>
								<td class="td-name td-mb-hide">${bvo.freeBoard_hit}</td>
								<td class="td-date td-mb-hide"><fmt:formatDate
									value="${bvo.freeBoard_date}" pattern="yyyy.MM.dd" />
								</td>
								<c:if test="${bvo.freeBoard_ban == 0}">
									<td>게시중</td>
								</c:if>
								<c:if test="${bvo.freeBoard_ban == 1}">
									<td style="color:red;">가려짐</td>
								</c:if>
                        	</tr>
						</c:forEach>
                    </table>
                   <!-- 하단 넘버링 부분!!! -->
							<div class="bottom-paging">
					<ul class="page-numul" style="list-style:none;">
						<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></c:if>
						<c:if test="${map.page != 1}">
						<a href="admin_freeBoardList?page=1"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></a>
						</c:if>
						
						<c:if test="${map.page==1}"><li><span class="material-symbols-outlined">chevron_left</span></li></c:if>
						<c:if test="${map.page > 1}">
						<a href="admin_freeBoardList?page=${map.page - 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></a>
						</c:if>
						
						<c:forEach begin="${map.startpage}" end="${map.endpage}" step="1" var="number">
							<c:if test="${map.page == num}">
							<li class="page-num" id="page-on">
								<div id="page-number">${number}</div>
							</li>
							</c:if>
							<c:if test="${map.page != num}">
							<li class="page-num">
								<a href="admin_freeBoardList?page=${number}"><div id="page-number">${number}</div></a>
							</li>
							</c:if>
						</c:forEach>
						
						<c:if test="${map.page == map.maxpage}"><li><span class="material-symbols-outlined">chevron_right</span></li></c:if>
						<c:if test="${map.page < map.maxpage}">
						<a href="admin_freeBoardList?page=${map.page + 1}"><li><span class="material-symbols-outlined">chevron_right</span></li></a>
						</c:if>
						
						<c:if test="${map.page == map.maxpage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></c:if>
						<c:if test="${map.page != map.maxpage}">
						<a href="admin_freeBoardList?page=${map.maxpage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></a>
						</c:if>
					</ul>
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