<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>logout</title>
	</head>
	<body>
		<% session.invalidate(); %>
		<script>
			alert("정상적으로 로그아웃 되었습니다");
			location.href="login";
		</script>
	</body>
</html>