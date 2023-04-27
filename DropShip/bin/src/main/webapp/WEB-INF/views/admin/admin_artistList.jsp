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
    <title>DropShip Admin - 작가 관리</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <style>
    	#workImage {width: 100px; height: 100px; text-align: center; 
		 margin: 0 auto;}
			
		/* 추가 */
			.admin_memberListTable {
    width: 80%;
    margin-left: 25px;
    border-collapse: collapse;
    font-family: Arial, sans-serif;
    font-size: 14px;
}

.admin_memberListTable th,
.admin_memberListTable td {
    height: 40px;
    padding: 8px;
    text-align: center;
    vertical-align: middle;
}

.admin_memberListTable th {
    background-color: #2c3e50;
    color: #ffffff;
}
		.admin_memberListTable tr:hover {
    background-color: #f5f5f5;
}	
			.delete-button {
    background-color: #f44336;
    color: white;
    border: none;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 4px;
}
		.admin_noticeBoard_div {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.admin_noticeBoard_button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 4px;
}	
.uploaded-works {
    display: flex;
    flex-wrap: wrap;
}

.uploaded-work {
    margin-right: 10px;
    margin-bottom: 10px;
    text-align: center;
}
.inner-table {
    width: 100%;
    border-collapse: collapse;
}

.inner-table td {
    padding: 5px;
    text-align: center;
    vertical-align: top;
}
		/* 추가 */
    </style>
    <script>
			// <tr>태그 누르는 거랑 '삭제' 버튼 누를때 링크 다르게 하려고
			var flag = 0;
			
			function deleteArtistBtn(id, name) {
				// flag 가 1 -> 삭제버튼만 작동(<tr>태그 누르는 링크 작동 안하게)
				flag = 1;
				
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
	                    	flag = 0;
			            },
			            error: function() {
			                alert("실패");
			            }
			        }); //ajax
			    } else {
			        alert("작가 삭제가 취소되었습니다.");
			    }
			} //deleteArtistBtn()


			function artistView(id){
				if(flag == 0){
					location.href='admin_artistView?id='+id;
				}
			}// artistView()


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
                <div class="admin_memberListTableDiv">
                    <table class="admin_memberListTable">
                        <colgroup>
						    <col width="10%">
						    <col width="20%">
						    <col width="15%">
						    <col width="15%">
						    <col width="20%">
						    <col width="10%">
						    <col width="10%">
						</colgroup>
                        <tr>
                            <th>작가 고유번호</th>
                            <th>작가 이름</th>
                            <th>국적</th>
                            <th>출생 - 사망</th>
                            <th>주요 작품</th>
                            <th>업로드된 작품</th>
                            <th>삭제</th>
                        </tr>
                        <c:forEach items="${artistList}" var="artistVo">
                            <tr onclick="artistView(${artistVo.getId()})" style="cursor:pointer;">
                                <td>${artistVo.getId()}</td>
                                <td>${artistVo.getArtist_korean_name()}</td>
                                <td>${artistVo.getArtist_country()}</td>
                                <td>${artistVo.getArtist_birth_death()}</td>
                                <td>${artistVo.getArtist_main()}</td>
                               <td>
								    <table class="inner-table">
								        <tr>
								            <c:forEach items="${artistVo.getWorkList()}" var="workVo">
								                <td class="uploaded-work">
								                    <a href="admin_workView?id=${workVo.getId()}">${workVo.getWork_name()}</a><br>
								                    <img src="admin/img/work/${workVo.getWork_img_url()}" id="workImage">
								                </td>
								            </c:forEach>
								        </tr>
								    </table>
								</td>
                                <td><button class="delete-button" id="deleteArtist" onclick="deleteArtistBtn(${artistVo.getId()},'${artistVo.getArtist_korean_name()}')">삭제</button></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div><br>
                <div class="admin_noticeBoard_div">
                    <button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_artistAdd'" style="margin: 0 auto; color:red;">작가 추가</button>
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