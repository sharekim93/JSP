<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.awt.HeadlessException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
		<h3 class="panel-heading">JSP + JDBC</h3>
		<table class="table">
			<%
				ResultSet 	rset = null;
				try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE","ouser","1111"		
				);
				Statement stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from milk");
				while(rset.next()){
					out.println("<p>"+rset.getString("mno")
					+"&nbsp;"+rset.getString("mname")+"&nbsp;"+rset.getString("mprice")+"</p>");
				}
				stmt.close();
				conn.close();
				}
				catch (HeadlessException e) { e.printStackTrace(); }
				catch (NumberFormatException e) { e.printStackTrace(); }
				catch (ClassNotFoundException e) { e.printStackTrace(); }
				catch (SQLException e) { e.printStackTrace(); }
			%>
	    </table>
	</div>
</body>
</html>