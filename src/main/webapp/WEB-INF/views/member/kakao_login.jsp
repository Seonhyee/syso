<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Kakao Login Test</h1>
	<%
// 	if(request.getParameter("redirect_id"))
	%>
	<span tf:if=${userId == null}>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=6cd2827c8a8d111de26b3cfef5b7a2b4&redirect_uri=	
http://localhost:8080/member/kakao_login&response_type=code">
			<img src="./resources/images/kakao_login_medium_narrow.png">
		</a>
	</span>
	<span th:if="${userId!=null}">
		<form name="logout" action="http://localhost:8080/logout">
			<input type="submit" value="로그아웃">
		</form>
	</span>
</body>
</html>