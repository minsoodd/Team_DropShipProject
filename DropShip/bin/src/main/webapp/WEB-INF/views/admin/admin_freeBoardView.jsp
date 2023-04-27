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
    <title>DropShip Admin - 공지</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script>
	    function admin_boardChkBtn(){
				if(confirm("해당 게시글 노출을 변경하시겠습니까?")) admincheckFrm.submit();
		}//fboardBtn()
    </script>
</head>

<body class="sb-nav-fixed">
    <%-- 	<c:if test="${result == 0}"> --%>
    <!-- 		<script> -->
    // alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
    // location.href="admin_login";
    <!-- 			</script> -->
    <%-- 	</c:if> --%>
    <%-- 	<c:if test="${result == 1}"> --%>
    <!-- 		<script> -->
    // alert("로그인되었습니다");
    <!-- 			</script> -->
    <%-- 	</c:if> --%>
    <%-- 	<c:if test="${sessionAdminLoginId==null}"> --%>
    <!-- 		<script> -->
    // alert("관리자만 접근할 수 있습니다!");
    // location.href="admin_login";
    <!-- 			</script> -->
    <%-- 	</c:if> --%>
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
                <div>
                    <table class="admin_noticeBoardAdd">
                        <form name="admincheckFrm" id="modify" action="admin_freeBoardModify"  method="post" enctype="multipart/form-data">
                        	<input type="hidden" name="id" value="${boardVo.id}">
                            <colgroup>
                                <col width="25%">
                                <col width="75%">
                            </colgroup>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="free_board_title">게시글 제목</label></th>
                                <td>${boardVo.freeBoard_title}</td>
                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="free_board_title">게시글 타입</label></th>
                                <c:if test="${boardVo.freeBoard_head=='0'}">
	                            	<td>자유</td>
	                        	</c:if>
	                       		 <c:if test="${boardVo.freeBoard_head=='1'}">
	                            	<td>후기</td>
	                        	</c:if>
	                        	<c:if test="${boardVo.freeBoard_head=='2'}">
	                            	<td>질답</td>
	                        	</c:if>
                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="free_board_content">게시글 내용</label></th>
                                <td>
                                    ${boardVo.freeBoard_content}
                                </td>

                            </tr>
                            <tr>
                                <th style="background-color: #212529; color: #fff;"><label for="eventFile">첨부 파일(이미지)</label></th>
                                <td>${boardVo.freeBoard_file_name}</td>
                            </tr>
<!--                             <tr> -->
<!--                                 <th><label for="eventLink">첨부 링크</label></th> -->
<%--                                 <td> ${boardVo.freeBoard_title}"</td> --%>
<!--                             </tr> -->
                            <tr>
                                <th style="background-color: #212529; color: #fff;">게시글 노출 수정</th>
                                <td>
                                    <input type="radio" id="true" name="freeBoard_ban" value="0" <c:if test="${boardVo.freeBoard_ban==0}">checked</c:if>>
                                    <label for="0">사용</label>
                                    <input type="radio" id="false" name="freeBoard_ban" value="1" <c:if test="${boardVo.freeBoard_ban==1}">checked</c:if>>
                                    <label for="1">정지</label>
                                </td>
                            </tr>
                        </form>
                    </table><br>
                    <div class="admin_noticeBoard_div">
                        <button type="button" class="admin_noticeBoard_button" onClick="admin_boardChkBtn()" style="margin: 0 0 0 500px; color:red; border-radius:5px;">수정 완료</button>
                        <button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_freeBoardList'" style="margin: 0 auto; border-radius:5px;">게시판 리스트</button>
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