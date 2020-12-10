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
		<h3 class="panel-heading ">FORM-SCORE</h3>
		<div>
			<%
			request.setCharacterEncoding("utf-8");
			int kor	 = Integer.parseInt(request.getParameter("kor"));
			int eng	 = Integer.parseInt(request.getParameter("eng"));
			int math = Integer.parseInt(request.getParameter("math"));
			
			int total = kor+eng+math;
			float avg = total/3f;
			
			String pass="";
			if(avg>=60&&(kor>=40&&eng>=40&&math>=40)){pass="합격";}
			else if(avg>=60){pass="과락";}
			else {pass="불합격";}
			
			String level="";
			if(avg>=90){level="A";}
			else if(avg>=80){level="B";}
			else if(avg>=70){level="C";}
			else {level="D";}
			
/* 			out.println("국어 :"+kor+"<br/>"+	"영어 :"+eng+"<br/>"+	"수학 :"+math+"<br/>"+
						"총점 :"+total+"<br/>"+"평균 :"+avg+"<br/>"); */
			%>
			<p>국어 :<%=kor%></p>
			<p>영어 :<%=eng%></p>
			<p>수학 :<%=math%></p>
			<p>총점 :<%=total%></p>
			<p>평균 :<%=avg%></p>
			<p>합격여부 : <%=pass %></p>
			<p>레벨 :<%=level %></p>
		</div>
		<div>
			<a href="jsp013_form_score.jsp" class="btn btn-danger">처음으로 이동</a>
		</div>
	</div>
</body>
</html>