<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>doMember</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${loginResult == 0}">
				<script>
					alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
					location.href="../member/login";
				</script>
			</c:when>
			<c:when test="${loginResult == 1}">
				<script>
					alert("드랍쉽에 정상적으로 로그인 되었습니다!");
					location.href="../";
				</script>
			</c:when>
			
			<c:when test="${pwResult == 0}">
				<script>
					alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요");
					location.href="../member/register_update_pwcheck";
				</script>
			</c:when>
			<c:when test="${pwResult == 1}">
				<script>
					alert("비밀번호 확인 되었습니다. 다음 창으로 넘어갑니다.");
					location.href="../member/register_update_intro";
				</script>
			</c:when>
			
			<c:when test="${pwModifyResult == 1}">
				<script>
					alert("비밀번호 확인 되었습니다. 다음 창으로 넘어갑니다.");
					location.href="../member/register_update_result";
				</script>
			</c:when>
			
			<c:when test="${registerUpdateResult == 1}">
				<script>
					alert("회원정보 수정이 완료 되었습니다.");
					location.href="../member/register_update_result";
				</script>
			</c:when>
			
			<c:when test="${memberDeleteResult == 0}">
				<script>
					alert("계정삭제에 실패 했습니다.");
					location.href="member/register_delete";
				</script>
			</c:when>
			<c:when test="${memberDeleteResult == 1}">
				<script>
					alert("계정이 삭제 되었습니다.");
					location.href="../";
				</script>
			</c:when>
			
		</c:choose>
	</body>
</html>