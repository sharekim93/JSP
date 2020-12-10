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
		<div class="container panel panel-info">
			<h3 class="panel-heading ">FORM PLUS</h3>
			<div class="panel-body well">
				<p>1. 더하기 폼열기<br/>다음과 같이 설정-<br/>처리할경로 : jsp007_3_result.jsp<br/>
        		주소표시창줄에 노출 - GET<br/>보관용기이름 : num1/num2<br/>
        		2. 전송버튼을 누르면 다음과 같이 출력<br/>== 더하기 프로그램 ==<br/>10+20=30<br/>[다시]
        		</p>
			</div>
	      <form action="jsp012_form_result.jsp" method="get">
	         <fieldset>
	            <legend>PLUS</legend>
	            <div class="form-group">
	               <label for="num1">NUM1</label><br>
	               <input type="text" name="num1" id="num1">
	            </div>
	            <div class="form-group">
	               <label for="num2">NUM2</label><br>
	               <input type="text" name="num2" id="num2">
	            </div>
	            <div class="form-group">
	               <input type="submit" name="result" id="result" value="계산하러가기" class="btn btn-danger">
	            </div>
	         </fieldset>
	      </form>
	
		</div>
	</body>
</html>