<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h3>검색결과</h3>
		<%
			request.setCharacterEncoding("utf-8");
			String str = request.getParameter("query");
		%>
		<p><%=str %></p>
	</div>
</body>
</html>