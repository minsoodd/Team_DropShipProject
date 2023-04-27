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
    <title>DropShip Admin - 관리자 추가</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

    <script>
        function memberAddBtn() {
            var namePattern = /^[가-힣]{1,10}/;
            var idPattern = /^[a-zA-Z0-9]{3,16}$/;

            if ($("#admin_name").val().length < 2) {
                alert("이름은 최소 2글자 이상을 입력해야합니다!");
                $("#admin_name").focus();
                return;
            }

            if (!namePattern.test($("#admin_name").val())) {
                alert("한글 이름만 사용할 수 있습니다!");
                $("#admin_name").focus();
                return;
            }

            if ($("#admin_login_id").val().length < 3) {
                alert("ID는 최소 3글자 이상을 입력해야합니다!");
                $("#admin_login_id").focus();
                return;
            }
            
            if ($("#admin_phone").val().length > 11) {
                alert("연락처는 11글자까지만 입력해야합니다!");
                $("#admin_phone").val("");
                $("#admin_phone").focus();
                return;
            }

            if (!idPattern.test($("#admin_login_id").val())) {
                alert("영문과 숫자만 사용할 수 있습니다.!");
                $("#admin_login_id").focus();
                return;
            }

            var pw1 = $("#admin_pw").val();
            var pw2 = $("#admin_pw2").val();
            if (pw1 != pw2) {
                alert("패스워드가 일치하지 않습니다. 확인해주세요.");
                $("#admin_pw2").val("").focus();
                return false;
            }

            var rgbColor = $("#result_checkId").css('color');
            if (rgbColor != 'rgb(0, 0, 255)') {
                alert("ID 중복확인을 진행해주세요!");
                return false;
            }

            if (confirm("해당 ADMIN을 추가하시겠습니까?")) {
                admin_memberAddFrm.submit();
            }
        } //memberAddBtn
    </script>
</head>
<c:if test="${sessionSuperAdmin != 1}">
    <script>
        alert("슈퍼 관리자만 접근할 수 있습니다!");
        location.href = "admin_index";
    </script>
</c:if>
<script type="text/javascript">
    $(function() {
        $("#checkIdBtn").click(function() {
        	dup = 1; // 중복확인 버튼 클릭-> dup을 0에서 1로 바꾸기. span 글자 보이게 할려고 사용
        	let admin_login_id = $("#admin_login_id").val();
        	var idPattern = /^[a-zA-Z0-9]{3,12}$/; // id
        	if(admin_login_id == ""){
        		alert("아이디를 입력하세요.");
        		$("#admin_login_id").focus();
        		dup = 0;
        		return false;
        	}
        	if(!idPattern.test(admin_login_id)){
        		alert("아이디는 3자리이상 11자리이하 영문,숫자만 입력 가능합니다.");
        		$("#admin_login_id").focus();
        		dup = 0;
        		return false;
        	}

        	$.ajax({
        		url: "adminMemberCheckId", 
        		type: 'post',		
        		data: {"admin_login_id":admin_login_id}, 
        		success: function(flag){
        			
        			if(flag == 0){ // 만약 성공할시
        				result = "사용 가능한 아이디입니다.";
        				$("#result_checkId").html(result).css("color","blue").show();
        				$("#admin_pw").trigger("focus");
        				dup = 1;
        				
        			}else{ // 만약 실패할시
        				result = "이미 사용중인 아이디입니다.";
        					$("#result_checkId").html(result).css("color","red").show();
        					$("#admin_login_id").val("").trigger("focus");
        					dup = 0;
        			}
        		},	
        		error : function(){alert("시스템오류입니다.");}		 			
        	})//ajax
        }); //checkIdBtn
     
        // 아이디 입력 필드의 값이 변경될 때마다 중복확인 상태 초기화
	 	$("#admin_login_id").on("change", function(){
	 	    dup = 0;
	 	    $("#result_checkId").hide();
	 	    $("#result_checkId").text("* ID 중복 확인을 진행해주세요.").css("color","red").show();
	 	  });//reg_mb_id
	 	  
    }); //function
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
                    <h1 class="mt-4">관리자 등록</h1>
                    <div class="card mb-4">
                        <div class="card-body">Super Admin이 일반 관리자를 <span style="color:red;">추가</span>하는 메뉴입니다.</div>
                    </div>
                </div>
                <form action="admin_memberAdd" name="admin_memberAddFrm" method="post">
                    <table class="admin_memberAddTableDiv">
                        <tr>
                            <th>관리자 이름</th>
                            <td>
                                <input type="text" name="admin_name" id="admin_name" style="width: 100%; text-align:center;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 로그인 아이디</th>
                            <td>
                                <input type="text" name="admin_login_id" id="admin_login_id" style="width: 72%; text-align:center; border-collapse: collapse;" required>
                                <input type="button" class="admin_idCheck_button" id="checkIdBtn" style="color:blue; font-weight:bold; border-radius:5px;" value="ID 중복확인" /><br>
                                <strong><span id="result_checkId" style="font-size:14px; color:gray; border-radius:5px;">※ ID 중복 확인을 진행해주세요.</span></strong>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 비밀번호</th>
                            <td>
                                <input type="text" name="admin_pw" id="admin_pw" style="width: 100%; text-align:center;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 비밀번호 확인</th>
                            <td>
                                <input type="text" name="admin_pw2" id="admin_pw2" style="width: 100%; text-align:center;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 연락처</th>
                            <td>
                                <input type="text" name="admin_phone" id="admin_phone" style="width: 100%; text-align:center;" required>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 등급</th>
                            <td>
                                <input type="radio" id="true_isSuper" name="admin_isSuper" value="1">
                                <label for="true_isSuper">슈퍼</label>
                                <input type="radio" id="false_isSuper" name="admin_isSuper" value="0" checked>
                                <label for="false_isSuper">일반</label>
                            </td>
                        </tr>
                        <tr>
                            <th>관리자 상태</th>
                            <td>
                                <input type="radio" id="true_ban" name="admin_ban" value="0" checked>
                                <label for="true_ban">사용</label>
                                <input type="radio" id="false_ban" name="admin_ban" value="1">
                                <label for="false_ban">정지</label>
                            </td>
                        </tr>
                    </table><br>
                    <div classs="admin_eventBoardAdd_div">
                        <button type="button" class="admin_eventBoardAdd_button" onClick="memberAddBtn()" style="margin: 0 0 0 190px; color:red; border-radius:5px;">ADMIN 추가</button>
                        <button type="button" class="admin_eventBoardAdd_button" onClick="location.href='admin_memberList'" style="margin: 0 auto; border-radius:5px;">ADMIN 리스트</button>
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