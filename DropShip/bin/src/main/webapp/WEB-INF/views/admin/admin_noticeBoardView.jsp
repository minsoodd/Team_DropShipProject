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
    <title>DropShip Admin - 공지</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script>
		function updateBtn(){
			alert("공지 수정 페이지로 이동합니다.");
			location.href="admin_noticeBoardUpdate?id=${boardNoticeVo.getId()}";
		}//updateBtn()

		function deleteBtn() {
            if (confirm("해당 공지사항을 삭제 하시겠습니까?")) {
            	location.href="admin_noticeBoardDelete?id=${boardNoticeVo.getId()}";
            }
        }//deleteBtn
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
                    <h1 class="mt-4">공지 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 공지를 확인하는 메뉴입니다. 공지를 <span style="color:red;">수정 또는 삭제</span>할 수 있습니다.</div>
                    </div>
                </div>
                <div>
                    <table class="admin_noticeBoardAdd">
                        <form action="admin_noticeBoard" name="admin_noticeBoard" method="post" enctype="multipart/form-data">
                            <colgroup>
                                <col width="25%">
                                <col width="75%">
                            </colgroup>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="noticeboard_title">공지 제목</label></th>
                                <td>${boardNoticeVo.getNoticeboard_title()}</td>
                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="noticeboard_istop">상단 등록</label></th>
                                <td>
                                	<input type="radio" id="true" name="noticeboard_istop" value="1" <c:if test="${boardNoticeVo.getNoticeboard_istop() == '1'}">checked</c:if>>
	                                <label for="true">등록</label>
	                                <input type="radio" id="false" name="noticeboard_istop" value="0" <c:if test="${boardNoticeVo.getNoticeboard_istop() == '0'}">checked</c:if>>
	                                <label for="false">취소</label>
								</td>
                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="noticeboard_content">공지 내용</label></th>
                                <td>
                                    ${boardNoticeVo.getNoticeboard_content()}
                                </td>
                            </tr>
                             <tr>
                                <th style="background-color: #212529; color: #fff;"><label>첨부 파일명</label></th>
                                <td>${boardNoticeVo.getNoticeboard_file_name()}</td>
                            </tr>
<!--                             <tr> -->
<!--                                 <th><label for="noticeboard_file_name">첨부 파일(이미지)</label></th> -->
<%--                                 <td><input type="file" id="noticeboard_file_name" name="noticeboard_file_name" style="width:100%;" readonly>${boardNoticeVo.getNoticeboard_file_name()}</td> --%>
<!--                             </tr> -->
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="noticeboard_hit">등록일</label></th>
                                <td><fmt:formatDate value="${boardNoticeVo.getNoticeboard_date()}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="noticeboard_hit">수정일</label></th>
                                <td><fmt:formatDate value="${boardNoticeVo.getNoticeboard_update_date()}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="noticeboard_hit">조회수</label></th>
                                <td>${boardNoticeVo.getNoticeboard_hit()}</td>
                            </tr>
                        </form>
                    </table><br>
                    <div class="admin_noticeBoard_div">
                        <button type="button" class="admin_noticeBoard_button" onclick="updateBtn()" style="margin: 0 0 0 400px; color:blue; border-radius:5px;">공지 수정</button>
                        <button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_noticeBoardList?page=${page}'" style="margin: 0 auto; border-radius:5px;">공지 리스트</button>
                        <button type="button" class="admin_eventBoardAdd_button" onclick="deleteBtn()" style="margin: 0 auto; color:red; border-radius:5px;">공지 삭제</button>
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