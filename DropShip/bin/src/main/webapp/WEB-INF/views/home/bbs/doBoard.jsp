<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>doBoard.jsp</title>
	</head>
	<body>
		<c:choose>
				<c:when test="${uploadResult == 1}"> <!-- w는 write  -->
					<script>
						alert("게시글이 저장되었습니다.");
						location.href="board";   /* .do로 가야 DB에서 데이터 받아온 페이지를 볼 수 있음. */
					</script>
				</c:when>
				<c:when test="${uploadResult == 0}">
					<script>
						alert("시스템 오류로 게시글이 저장되지 않았습니다.");
						location.href="board_write";
					</script>
				</c:when>
				<c:when test="${result == 's-d'}">	<!-- s-d : success delete -->
				<script>
					alert("게시글이 삭제되었습니다.");
					location.href="fboardList.do?page=${page}";   
				</script>
			</c:when>
			<c:when test="${result == 'f-d'}">
				<script>
					alert("시스템 오류로 게시글이 삭제되지 않았습니다.");
					location.href="fboardList.do?page=${page}";
				</script>
			</c:when>
			<c:when test="${result == 's-u'}">	
				<script>
					alert("게시글이 수정되었습니다.");
					location.href="fboardList.do?page=${page}";   
				</script>
			</c:when>
			<c:when test="${result == 'f-u'}">
				<script>
					alert("시스템 오류로 게시글이 수정되지 않았습니다.");
					location.href="fboardList.do?page=${page}";
				</script>
			</c:when>
		</c:choose>
	</body>
</html>