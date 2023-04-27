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
    <title>DropShip Admin - 작가 관리</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script>
        function artistAddBtn() {
        	if (!validCheck()) return;
        	artistAddFrm.submit();
        	alert("작가 입력이 완료됐습니다");
        } //artistAddBtn()
        
        //방어코드 모아놓은 함수
        function validCheck(){
		    if ($("#artist_korean_name").val().length < 1) {
		        alert("작가의 한글 이름을 입력해주세요.");
		        $("#artist_korean_name").focus();
		        return false;
		    }
		    if ($("#artist_english_name").val().length < 1) {
		        alert("작가의 영문 이름을 입력해주세요.");
		        $("#artist_english_name").focus();
		        return false;
		    }
		    if ($("#artist_country").val().length < 1) {
		        alert("작가의 출신 국가를 입력해주세요.");
		        $("#artist_country").focus();
		        return false;
		    }
		    if ($("#artist_birth_death").val().length < 1) {
		        alert("작가의 출생/사망 연도를 입력해주세요.");
		        $("#artist_birth_death").focus();
		        return false;
		    }
		    if ($("#artist_main").val().length < 1) {
		        alert("작가의 주요 작품을 입력해주세요.");
		        $("#artist_main").focus();
		        return false;
		    }
		    if ($("#artist_content").val().length < 1) {
		        alert("작가의 소개글을 입력해주세요.");
		        $("#artist_content").focus();
		        return false;
		    }
		    if ($("#artist_img_url").val() == "") {
		    	alert("작가 이미지를 첨부해주세요.");
		        $("#artist_img_url").focus();
		        return false;
		    }
		    return true;
		}//validCheck()
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
                    <h1 class="mt-4">작가 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 작가를 관리하는 메뉴입니다. 작가를 등록, 수정, 삭제할 수 있습니다.</div>
                    </div>
                </div>
                <form action="admin_artistAdd" name="artistAddFrm" method="post" enctype="multipart/form-data">
                    <table class="admin_memberAddTableDiv">
                        <tr>
                            <th>작가 한글 이름</th>
                            <td>
                                <input type="text" name="artist_korean_name" id="artist_korean_name" style="width: 100%;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>작가 영어 이름</th>
                            <td>
                                <input type="text" name="artist_english_name" id="artist_english_name" style="width: 100%;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>국적</th>
                            <td>
                                <input type="text" name="artist_country" id="artist_country" style="width: 100%;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>출생/사망</th>
                            <td>
                                <input type="text" name="artist_birth_death" id="artist_birth_death" style="width: 100%;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>주요작품</th>
                            <td>
                                <input type="text" name="artist_main" id="artist_main" style="width: 100%;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>아티스트 소개 본문</th>
                            <td>
                                <textarea id="artist_content" name="artist_content" cols="50" rows="10" style="width:100%;" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>작가 사진 첨부</th>
                            <td><input type="file" name="file" id="artist_img_url"></td>
                        </tr>
                    </table><br>
                    <div class="admin_noticeBoard_div">
                        <button type="button" class="admin_noticeBoard_button" onclick="artistAddBtn()" style="margin: 0 0 0 130px; color:red; border-radius:5px;">작가 등록</button>
                        <button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_artistList'" style="margin: 0 auto; border-radius:5px;">작가 리스트</button>
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