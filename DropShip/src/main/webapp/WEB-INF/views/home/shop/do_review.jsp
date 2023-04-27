<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${WorkReViewUpdateResult == 1}">
				<script>
					alert("작품리뷰 수정이 완료되었습니다.");
					location.href="../myshop/mypage?member_id=${sessionMember_id}";
				</script>
			</c:when>
			
			<c:when test="${WorkReViewDeleteResult == 1}">
				<script>
					alert("작품리뷰가 삭제되었습니다");
					location.href="../myshop/mypage?member_id=${sessionMember_id}";
				</script>
			</c:when>
			
		</c:choose>
		
		
		
		
	</body>
</html>