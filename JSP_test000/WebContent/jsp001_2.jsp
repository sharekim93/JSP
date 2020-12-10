<%@ page import = "java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Calendar c = Calendar.getInstance();
	int hour	=	c.get(Calendar.HOUR_OF_DAY);
	int min		=	c.get(Calendar.MINUTE);
	int sec		=	c.get(Calendar.SECOND);
	%>
	현재시간 : <%=hour %>:<%=min %>:<%=sec %>
</body>
</html>