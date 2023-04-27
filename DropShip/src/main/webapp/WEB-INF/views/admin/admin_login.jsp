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
    <title>Login - BX ADMIN</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" type="text/css" href="admin/css/styles.css">
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="bg-primary2">
    <script type="text/javascript">
	    $(document).ready(function() {
	    	  $("#admin_login_id, #admin_pw").on("keypress", function(event) {
	    	    if (event.keyCode === 13) {
	    	      loginBtn();
	    	    }
	    	  });
	    	});
    
        function loginBtn() {
            id = $("#admin_login_id").val();
            pw = $("#admin_pw").val();
            if (id == "") {
                alert("아이디를 입력하셔야 합니다!");
                $("#admin_login_id").focus();
                return;
            } else if (pw == "") {
                alert("비밀번호를 입력하셔야 합니다!");
                $("#admin_pw").focus();
                return;
            }
            loginFrm.submit();
        } //loginBtn
    </script>
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5" style="margin-top:-80px;">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="adminlogo">
                                    <img class="adminlogo" src="admin/img/adminlogo.png">
                                </div>
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">DropShip -
                                        관리자 로그인</h3>
                                </div>
                                <div class="card-body">
                                    <form action="admin_login" name="loginFrm" method="post">
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="admin_login_id" id="admin_login_id" type="text" placeholder="ID" /> <label for="inputEmail">admin
                                                ID</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" name="admin_pw" id="admin_pw" type="password" placeholder="Password" /> <label for="inputPassword">Password</label>
                                        </div>
                                        <div class="form-check mb-3">
                                            <div style="text-align: center;">
                                                <button class="btn btn-primary" type="button" onclick="loginBtn()">LOGIN</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="login-alret">관리자 계정이 필요하신 분은 담당자에게 연락 주시기 바랍니다!</div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="admin/js/scripts.js"></script>
</body>

</html>