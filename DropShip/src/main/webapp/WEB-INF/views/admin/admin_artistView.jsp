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
    <title>DropShip Admin - 작가 상세 관리</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
	<style>
	.work-container {
    display: flex;
    flex-wrap: wrap;
}
.content-wrapper {
    width: 60%;
    margin: 0 auto;
}
.work-item {
    width: 48%;
    margin-bottom: 20px;
}
#artistImage {
    width: 300px;
    height: 300px;
    text-align: center;
    display: block;
    margin: 50px auto;
    border-radius: 20px;
}
#workImage {
    width: 200px;
    height: 200px;
    text-align: center;
    display: block;
    margin: 0 auto;
    border-radius: 10px;
}
.admin_artistViewTable {
    margin: 0 auto;
    border-collapse: separate;
    border-spacing: 0 15px;
}
.admin_artistViewTable th, .admin_artistViewTable td {
    padding: 10px;
    border-bottom: 1px solid #f1f1f1;
}
.admin_artistViewTable th {
    text-align: left;
    font-weight: 600;
}
.admin_noticeBoard_div {
    text-align: center;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 15px;
}
.admin_noticeBoard_button {
    margin: 0;
    background-color: #4a73e8;
    border: none;
    border-radius: 5px;
    color: #fff;
    padding: 12px 24px;
    font-size: 16px;
    font-weight: 500;
    font-family: 'Roboto', sans-serif;
    cursor: pointer;
    transition: .3s;
    box-shadow: 0 2px 4px rgba(0,0,0,.1);
}
.admin_noticeBoard_button:hover {
    background-color: #3b5bdb;
    box-shadow: 0 4px 6px rgba(0,0,0,.2);
}
.admin_noticeBoard_button.delete {
    background-color: #e84a5f;
}
.admin_noticeBoard_button.delete:hover {
    background-color: #d73344;
}
body {
    font-family: Roboto, sans-serif;
}
h1.mt-4 {
    font-weight: 500;
    color: #333;
}
.card {
    border: none;
    box-shadow: 0 4px 6px rgba(0, 0, 0, .1);
}
.admin_artistViewTable {
    font-size: 16px;
    line-height: 1.5;
    color: #333;
}
.admin_artistViewTable th {
    font-weight: 500;
}
</style>
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
        	<div class="content-wrapper"><!-- 추가 -->
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">작가 상세 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 작가을 상세 관리하는 메뉴입니다. 작가을 등록, 수정, 삭제할 수 있습니다..</div>
                    </div>
                </div>
                
                <!-- 작가 이미지 (이미지 등록때부터 반드시 입력받게 할거라 if문 안씀 -->
                <img src="admin/img/artist/${artistVo.getArtist_img_url()}" id="artistImage">
                
                <div class="admin_artistViewTableDiv">
                    <table class="admin_artistViewTable">
                    	<colgroup>
                            <col width="25%">
                            <col width="75%">
                        </colgroup>
                        <tr>
                            <th>작가 고유번호</th>
                            <td>${artistVo.getId()}</td>
                        </tr>
                        <tr>
                            <th>작가 한글 이름</th>
                            <td>${artistVo.getArtist_korean_name()}</td>
                        </tr>
                        <tr>
                            <th>작가 영어 이름</th>
                            <td>${artistVo.getArtist_english_name()}</td>
                        </tr>
                        <tr>
                            <th>작가 이미지 url</th>
                            <td>${artistVo.getArtist_img_url()}</td>
                        </tr>
                        <tr>
                            <th>국적</th>
                            <td>${artistVo.getArtist_country()}</td>
                        </tr>
                        <tr>
                            <th>출생/사망</th>
                            <td>${artistVo.getArtist_birth_death()}</td>
                        </tr>
                        <tr>
                            <th>주요 작품</th>
                            <td>${artistVo.getArtist_main()}</td>
                        </tr>
                        <tr>
                            <th>작가 설명</th>
                            <td>${artistVo.getArtist_content()}</td>
                        </tr>
                        <tr>
                            <th>등록된 작품</th>
                            <td>
                                <div class="work-container">
                                    <c:forEach items="${workList}" var="workVo">
                                        <div class="work-item">
                                            <a href="admin_workView?id=${workVo.getId()}">${workVo.getWork_name()}</a><br>
                                            <img src="admin/img/work/${workVo.getWork_img_url()}" id="workImage"><br>
                                        </div>
                                    </c:forEach>
                                </div>
                            </td>
                        </tr>
                    </table><br>
<!--                     <div class="admin_noticeBoard_div"> -->
<!--                         <button type="button" class="admin_noticeBoard_button" onclick="location.href='admin_artistAdd'" style="margin: 0 0 0 500px; color:red;">작가 추가</button> -->
<!--                         <button type="button" class="admin_noticeBoard_button" onclick="updateArtistBtn()" style="margin: 0 0 0 500px; color:blue;">작가 수정</button> -->
<%--                         <button type="button" class="admin_noticeBoard_button delete" onclick="deleteArtistBtn(${artistVo.id},'${artistVo.getArtist_korean_name()}')" style="margin: 0 0 0 500px; color:black;">작가 삭제</button> --%>
<!--                         <button type="button" class="admin_noticeBoard_button" onclick="location.href='admin_artistList'" style="margin: 0 0 0 500px; color:black;">작가 리스트</button> -->
<!--                     </div> -->
                    <div class="admin_noticeBoard_div" style="display: flex; justify-content: center;">
	                  	<div style="margin: 0 auto;">
						    <button class=admin_noticeBoard_button onclick='location.href="admin_artistAdd"'style="color:red"type=button>작가 추가</button>
						    <button class=admin_noticeBoard_button onclick=updateArtistBtn() style="color:#00f"type=button>작가 수정</button>
						    <button class="admin_noticeBoard_button delete"onclick="deleteArtistBtn(${artistVo.id},'${artistVo.getArtist_korean_name()}')"style="color:#000"type=button>작가 삭제</button>
						    <button class=admin_noticeBoard_button onclick='location.href="admin_artistList"'style="color:#000"type=button>작가 리스트</button>
					    </div>
					</div>
                </div>
            </main>
            </div><!-- 추가 -->
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
	<script>
		function updateArtistBtn(){
			alert("작가정보 수정 페이지로 이동합니다.");
			location.href="admin_artistUpdate?id=${artistVo.id}";
		}//updateBtn()
		
		function deleteArtistBtn(id, name) {
		    if (confirm(id + "번 "+ name+ " 작가를 삭제하시겠습니까?")) {
		        $.ajax({
		            url: 'deleteArtist',
		            type: "POST",
		            data: {'id': id},
		            success: function(data) {
		                var workCount = data.workCount;
		                if (workCount > 0) {
		                    if (confirm(name + " 작가의 작품이 " + workCount + "개 존재합니다. 작가의 작품들을 먼저 삭제하셔야 작가 삭제가 가능합니다.\n"+name + " 작가 삭제를 위해 작품 리스트 페이지로 이동하시겠습니까?")) {
		                        location.href = "admin_workList";
		                    }
		                } else {
		                    alert(name + " 작가 삭제 성공");
		                    location.href = "admin_artistList";
		                }
		            },
		            error: function() {
		                alert("실패");
		            }
		        }); //ajax
		    } else {
		        alert("작가 삭제가 취소되었습니다.");
		    }
		} //deleteArtistBtn()
	</script>    
</body>

</html>