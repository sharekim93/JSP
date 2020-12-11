<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
	<div class="container panel panel-warning">
		<h3 class="panel-heading">db connector</h3>
		<pre>
		[다운로드]
		1. 오라클 JDBC 드라이버 다운로드
		2. 검색 : JDBC Drivers 
		3. ojdbc6.jar 다운로드
		4. [WebContent]-[WEB-INF]-[lib] 안에 jar 넣기
		</pre>
		<%@page import="java.sql.Connection" %>
		<%@page import="java.sql.DriverManager" %>
		<%try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:XE","ouser","1111");
			if(conn!=null){out.println("database 연결!");}
			}
			catch(Exception e){e.printStackTrace();}
		%>
	</div>
</body>
</html>