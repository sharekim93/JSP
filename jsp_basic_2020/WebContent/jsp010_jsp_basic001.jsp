<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h3>[JSP 기본요소] 001. 주석</h3>
		<!-- HTML 주석 -->
		<%-- JSP 주석 --%>
		<%  //java 주석 %>
	</div>
	
	<div class="container">
		<h3>[JSP 기본요소] 002. 지시자</h3>
		<p class="well"> jsp 파일 내에서 jsp를 실행할 때 컨테이너에게 해당 페이지를 어떻게 처리할 것인가를 지정 </p>
		<%@page import="java.util.Calendar" %>
		<%
			Calendar today	= Calendar.getInstance();
			String now		= today.get(1) +"년"+ (today.get(2)+1)+"월"+today.get(5)+"일";
		%>
		<%=now %>
	</div>
	
	<div class="container">
		<h3>[JSP 기본요소] 003. 스크립트립</h3>
		<%!	int global= 0; %>
		<%
			int local = 0;
			out.println("<p>"+ ++global + "</p>");
			out.println("<p>"+ ++local + "</p>");
		%>
		
		<h3>[JSP 기본요소] 004. 스크립트립2</h3>
		<%!
		public String show(){return "Hello";}
		public int add(int a,int b){return a+b;}		
		%>
		<p><%=show()%></p>
		<p>10+3=<%=add(10,3)%></p>
	</div>
</body>
</html>