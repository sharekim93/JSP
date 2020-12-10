<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>LOGIN 결과</title>
</head>
<body>
		<h3>LOGIN 결과</h3>
		<div>
			<%
			request.setCharacterEncoding("utf-8");
			String email = request.getParameter("email");
			%>
		<p> EMAIL :<%=email %>
		</div>
		<div>
			<%
			request.setCharacterEncoding("utf-8");
			String pass = request.getParameter("pass");
			%>
		<p> PASS :<%=pass %>
		</div>
</body>
</html>