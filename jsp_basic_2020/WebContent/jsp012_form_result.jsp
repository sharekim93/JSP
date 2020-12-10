<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title> 결과</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container panel panel-info">
		<h3 class="panel-heading ">FORM PLUS</h3>
		<div>
			<%
			request.setCharacterEncoding("utf-8");
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			%>
			<%!
			public int sum(int a, int b){return a+b;}
			%>
			<%int total = sum(Integer.parseInt(num1),Integer.parseInt(num2)); %>
		<%out.println(num1+"+"+num2+"="+total);%>
		</div>
		<div>
			<a href="jsp012_form_plus.jsp" class="btn btn-success">뒤로가기</a>
		</div>
	</div>
</body>
</html>