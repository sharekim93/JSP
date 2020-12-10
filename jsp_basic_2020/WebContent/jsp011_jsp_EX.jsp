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
	<div class="container">
	<h3>Q1. 페이지지시자 - 삽입 : CTRL + SPACEBAR</h3>
		<form class="form-group">
			<div class="well">
				<%@page import="java.util.Arrays"%>
				<%!int[] arr = {10,20,30};%>
				<%out.println(Arrays.toString(arr));%>
			</div>
		</form>
	</div>
	
	<div class="container">
	<h3>Q2. 스크릿트립 사용법1 - 선언문</h3>
		<form class="form-group">
			<div class="well">
				<%! String getMilk(){return "choco milk";} %>
				<%=getMilk()%>
			</div>
		</form>
	</div>
	
	<div class="container">
	<h3>Q3. 스크릿트립 사용법2 - 선언문+제어문</h3>
		<form class="form-group" action="https://www.naver.com/" method="get">
			<div class="well">
				<%! int num1=1; %>
				<% out.println((num1==1)? "1":"1이 아니다"); %>
			</div>
			<div>
				<%if(num1==1){out.println("<p><input type=\"submit\" value=\"네이버 로그인\" class=\"btn btn-danger\"></p>");}%>
			</div>
		</form>
	</div>
	
	<div class="container">
	<h3>Q4. 스크릿트립 - TIMER</h3>
		<form class="form-group">
			<div class="well">
				<%@page import="java.util.Calendar" %>
				<%Calendar time = Calendar.getInstance(); %>
				<%out.println((time.get(Calendar.HOUR_OF_DAY)<12)? "AM":"PM"+" "+time.get(Calendar.HOUR)+":"+time.get(Calendar.MINUTE)); %>
			</div>
		</form>
	</div>
	
	<div class="container">
	<h3>Q5. 아래 표현식이 가능하게 1~100까지의 함수 sum()을 만드세요</h3>
		<form class="form-group" >
			<div class="well">
				<%!int num=0; %>
				<%!void sum(){
					for(int i=0;i<=100;++i){
						num+=i;
					}
				}			
				%>
				<%sum();%>
			<p>1부터 100까지의 합은 <%=num%>입니다.</p>
			<p>1부터 100까지의 합에 3을 곱하면<%=num*3 %>이 됩니다.</p>
			<p>1부터 100까지의 합을 1000으로 나누면<%=num/1000f%>이 됩니다.</p>
			</div>
		</form>
	</div>
</body>
</html>