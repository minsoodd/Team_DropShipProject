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
			<c:when test="${sessionBan == 1 && loginResult == 1}">
				<script>
					alert("사용할 수 없는 관리자 계정입니다!\n담당자에게 문의해 주세요!");
					location.href="admin_login";
				</script>
			</c:when>
			
			<c:when test="${loginResult == 0}">
				<script>
					alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
					location.href="admin_login";
				</script>
			</c:when>
			<c:when test="${loginResult == 1}">
				<script>
					alert("DropShip 관리자 페이지에 로그인되었습니다.");
					location.href="admin_index";
				</script>
			</c:when>
			
			<c:when test="${addResult == 0}">
				<script>
					alert("관리자 추가가 실패했습니다.");
					location.href="admin_memberList";
				</script>
			</c:when>
			<c:when test="${addResult == 1}">
				<script>
					alert("DropShip 관리자가 추가 되었습니다.");
					location.href="admin_memberList";
				</script>
			</c:when>
			
			<c:when test="${deleteResult == 0}">
				<script>
					alert("ADMIN 계정 삭제에 실패 했습니다.");
					location.href="admin_memberList";
				</script>
			</c:when>
			<c:when test="${deleteResult == 1}">
				<script>
					alert("ADMIN 계정이 정상적으로 삭제 되었습니다.");
					location.href="admin_memberList";
				</script>
			</c:when>
			
			<c:when test="${PWResult == 0}">
				<script>
					alert("PW 수정이 실패했습니다.");
					location.href="admin_index";
				</script>
			</c:when>
			<c:when test="${PWResult == 1}">
				<script>
					alert("PW가 수정되었습니다.");
					location.href="admin_index";
				</script>
			</c:when>
			
			<c:when test="${updateResult == 0}">
				<script>
					alert("관리자 정보 수정이 실패했습니다.");
					location.href="admin_memberList";
				</script>
			</c:when>
			<c:when test="${updateResult == 1}">
				<script>
					alert("관리자 정보가 수정 되었습니다.");
					location.href="admin_memberList";
				</script>
			</c:when>
			
			<c:when test="${noticeDeleteResult == 0}">
				<script>
					alert("공지사항 삭제가 실패했습니다.");
					location.href="admin_noticeBoardList";
				</script>
			</c:when>
			<c:when test="${noticeDeleteResult == 1}">
				<script>
					alert("공지사항이 삭제 되었습니다.");
					location.href="admin_noticeBoardList";
				</script>
			</c:when>
			
			<c:when test="${updateNoticeResult == 0}">
				<script>
					alert("공지사항 수정이 실패했습니다.");
					location.href="admin_noticeBoardList";
				</script>
			</c:when>
			<c:when test="${updateNoticeResult == 1}">
				<script>
					alert("공지사항이 수정 되었습니다.");
					location.href="admin_noticeBoardList";
				</script>
			</c:when>
			
			<c:when test="${insertNoticeAddResult == 0}">
				<script>
					alert("공지사항 등록이 실패했습니다.");
					location.href="admin_noticeBoardList";
				</script>
			</c:when>
			<c:when test="${insertNoticeAddResult == 1}">
				<script>
					alert("공지사항이 등록 되었습니다.");
					location.href="admin_noticeBoardList";
				</script>
			</c:when>
			
			<c:when test="${insertEventAddResult == 0}">
				<script>
					alert("이벤트 등록이 실패했습니다.");
					location.href="admin_eventBoardList";
				</script>
			</c:when>
			<c:when test="${insertEventAddResult == 1}">
				<script>
					alert("이벤트가 등록 되었습니다.");
					location.href="admin_eventBoardList";
				</script>
			</c:when>
			
			<c:when test="${updateEventResult == 0}">
				<script>
					alert("이벤트 수정이 실패했습니다.");
					location.href="admin_eventBoardList";
				</script>
			</c:when>
			<c:when test="${updateEventResult == 1}">
				<script>
					alert("이벤트가 수정 되었습니다.");
					location.href="admin_eventBoardList";
				</script>
			</c:when>
			
			<c:when test="${eventDeleteResult == 0}">
				<script>
					alert("이벤트 삭제가 실패했습니다.");
					location.href="admin_eventBoardList";
				</script>
			</c:when>
			<c:when test="${eventDeleteResult == 1}">
				<script>
					alert("이벤트가 삭제 되었습니다.");
					location.href="admin_eventBoardList";
				</script>
			</c:when>
			
			
		</c:choose>
	</body>
</html>