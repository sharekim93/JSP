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
	<div class="container panel panel-success">
		<h3 class="panel-heading">table-basic</h3>
		<pre>
table - 표
tr(table row) - 줄
td(table data) - 칸
		</pre>
		<table class="table table-striped">
			<tr><td>1-1</td> <td> 1-2</td></tr>
		</table>
		
		<h3 class=well> Q1) 3(줄)*3(칸) 표 만들기 </h3>
		<table class="table table-striped">
			<tr><td>1-1</td><td>1-2</td><td>1-3</td></tr>
			<tr><td>2-1</td><td>2-2</td><td>2-3</td></tr>
			<tr><td>3-1</td><td>3-2</td><td>3-3</td></tr>
			
			<%
				for(int i=1;i<=3;i++){
					out.print("<tr>");
					for(int j=1;j<=3;j++){
						out.println("<td>"+(i) + '-' + (j)+"</td>");
					}
					out.print("</tr>");
				}
			%>			
		</table>		
	 </div>
	 
	 <div class="container panel panel-success">
	 	<h3 class="panel-heading">TABLE BASIC(2)</h3>
	 	<pre>
열 합치기 : colspan="합칠 열 수"
행 합치기 : rowspan="합칠 행 수"
	 	</pre>
		<h3 class=well> Q2) 5(줄)*3(칸) 표 만들기 </h3>	 	
	 	<table class="table table-striped">
	 		<tr><td>1-1</td><td colspan="2">1-2</td></tr>
	 		<tr><td colspan="3">2-1</td></tr>
	 		<tr><td rowspan="3">3-1</td><td>3-2</td><td>3-3</td></tr>
	 		<tr>						<td>4-2</td><td>4-3</td></tr>
	 		<tr>						<td colspan="2">5-2</td></tr>
	 	</table>
	 </div>
	 
	 <div class="container panel panel-success">
	 	<h3 class="panel-heading">TABLE BASIC(3)</h3>
	 	<pre>
table 표 안의 영역 : thead / tbody /tfoot
table 제목 : caption
table 칸의 제목 :  th / scope = 읽어들일 방향 
	 	</pre>
	 	<table class="table table-striped">
	 		<caption>커피판매현황</caption>
	 		<thead>
	 			<tr>
	 			<th scope="col">주문번호</th><th scope="col">커피이름</th><th scope="col">커피가격</th>
	 			</tr>
	 		</thead>
	 		<tbody>
	 			<tr><td>1</td> <td>카푸치노</td> <td>1500</td></tr>
	 			<tr><td>2</td> <td>아메리카노</td> <td>1000</td></tr>
	 			<tr><td>3</td> <td>아메리카노</td> <td>1000</td></tr>
	 		</tbody>
	 		<tfoot>
	 			<tr><th scope="row" colspan="2">합계</th> <td>3500</td></tr>
	 		</tfoot>
	 	</table>
	 </div>
	 
	 <div class="container panel panel-success">
	 	<h3 class="panel-heading">TABLE BASIC(3) 웹표준 이용해서 다음과 같이 테이블을 만들어주세요. (db 미연동)</h3>
	 	<table class="table table-striped">
	 		<caption>userinfo</caption>
	 		<thead>
	 			<tr><td>번호</td><td>이름</td><td>나이</td></tr>
	 		</thead>
	 		<tbody>
	 			<tr><td>1</td><td>first</td><td>1</td></tr>
	 			<tr><td>2</td><td>second</td><td>2</td></tr>
	 			<tr><td>3</td><td>third</td><td>3</td></tr>
	 		</tbody>
	 	</table>
	 </div>
	 <div class="container panel panel-success">
	 	<h3 class="panel-heading">TABLE BASIC(4) jdbc + userinfo 웹표준 이용해서 다음과 같이 테이블을 만들어주세요. (db 연동)</h3>
	 	<table class="table table-striped">
		 	<caption>USERINFO</caption>
		 	<thead><tr><th scope="col">번호</th><th scope="col">이름</th><th scope="col">나이</th></tr></thead>
		 	<tbody>
		 	<%@page import="java.sql.DriverManager"%>
			<%@page import="java.sql.Connection"%>
			<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.ResultSet"%>
		 	<%
		 		try{
		 		Class.forName("oracle.jdbc.driver.OracleDriver");
		 		Connection conn = DriverManager.getConnection(
		 				"jdbc:oracle:thin:@localhost:1521:XE","ouser","1111");
		 		Statement stmt = conn.createStatement();
		 		ResultSet rset = stmt.executeQuery("select no,name,age from userinfo");
		 		while(rset.next()){
		 			out.println("<tr>"+"<td>"+rset.getInt("NO")+"</td>"
		 					+"<td>"+rset.getString("NAME")+"</td>"
		 					+"<td>"+rset.getInt("AGE")+"</td>"+"</tr>");
		 		}
		 		rset.close();
		 		stmt.close();
		 		conn.close();
		 		}
		 		catch(Exception e){e.printStackTrace();}
		 	%>
		 	</tbody>
	 	</table>
	</div>
	<div class="container panel panel-success">
	 	<h3 class="panel-heading">TABLE BASIC(5) jdbc + milk 웹표준 이용해서 다음과 같이 테이블을 만들어주세요. (db 연동)</h3>
		<table class="table table-striped">
		 	<caption>MILK</caption>
		 	<thead><tr><th scope="col">mno</th><th scope="col">mname</th><th scope="col">mprice</th></tr></thead>
		 	<tbody>
		 	<%@page import="java.sql.DriverManager"%>
			<%@page import="java.sql.Connection"%>
			<%@page import="java.sql.Statement"%>
			<%@page import="java.sql.ResultSet"%>
		 	<%
		 		try{
		 		Class.forName("oracle.jdbc.driver.OracleDriver");
		 		Connection conn = DriverManager.getConnection(
		 				"jdbc:oracle:thin:@localhost:1521:XE","ouser","1111");
		 		Statement stmt = conn.createStatement();
		 		ResultSet rset = stmt.executeQuery("select * from milk");
		 		while(rset.next()){
		 			out.println("<tr>"+"<td>"+rset.getInt("MNO")+"</td>"
		 					+"<td>"+rset.getString("MNAME")+"</td>"
		 					+"<td>"+rset.getInt("MPRICE")+"</td>"+"</tr>");
		 		}
		 		rset.close();
		 		stmt.close();
		 		conn.close();
		 		}
		 		catch(Exception e){e.printStackTrace();}
		 	%>
		 	</tbody>
	 	</table>	
	 </div>
	 
</body>
</html>