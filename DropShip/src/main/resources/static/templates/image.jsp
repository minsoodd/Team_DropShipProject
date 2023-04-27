<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<title>DALL-E & Spring demo</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css' />" />
</head>
<body>
	<main role="main" class="container">
		<div class="starter-template">
			<h1>DALL-E API at<br/>agile-coding.blogspot.com</h1>
			<h2>Describe image</h2>
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
			    <h2>DALL-E draw for you: </h2>
			    <img src="${imageUri}" alt="Picture drawn by DALL-E" />
			</c:if>
		</div>
	</main>
</body>
</html>