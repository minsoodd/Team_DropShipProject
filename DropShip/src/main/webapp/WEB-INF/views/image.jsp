<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<title>DALL-E & Spring demoㅇ</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css' />" />
</head>
<body>
	<main role="main" class="container">
		<div class="starter-template">
			<h1>DALL-E API at<br/>한글한글</h1>
			<h2>생성할 이미지를 적어주세요 : </h2>
			<form action="<c:url value='/image' />" method="post">
			    <fieldset>
			        <div class="form-group">
			            <input type="text" name="prompt" value="${request}" required autofocus/>
			        </div>
			        <div class="row">
			            <input type="submit" value="Send" />
			        </div>
			    </fieldset>
			</form>
			<c:if test="${imageUri ne null}">
			    <h2>DALL-E가 그림을 그려주고 있습니다! </h2>
			    <img src="${imageUri}" alt="DALL-E가 그린 그림" />
			</c:if>
		</div>
	</main>
</body>
</html>