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
			<h3 class="panel-heading ">FORM BASIC - SCORE</h3>
			<div class="panel-body well">
				<p>1. 성적처리 폼열기<br/>다음과 같이 설정-<br/>처리할경로 : jsp007_4_result.jsp<br/>
        		주소표시창줄에 노출<br/>보관용기이름 : kor/eng/math<br/>
        		2. 전송버튼을 누르면 다음과 같이 출력<br/>== 성적처리 프로그램 ==<br/>국어 : 1000<br/>영어 :100
        		<br/>수학 : 99<br/>총점 : 299<br/>평균 : 99.6666666667
        		<br/>합격여부 : 평균 60점 이상/ 국,영,수 40점 이상
        		<br/>모두통과	<br/>레벨 A <br/>90점 이상 A<br/>80점 이상 B	<br/>나머지 D
        		<br/>[다시]
        		</p>
			</div>
	      <form action="jsp013_form_result.jsp" method="get">
	         <fieldset>
	            <legend>SCORE</legend>
	            <div class="form-group">
	               <label for="kor">KOR :</label><br>
	               <input type="text" name="kor" id="kor">
	            </div>
	            <div class="form-group">
	               <label for="eng">ENG :</label><br>
	               <input type="text" name="eng" id="eng">
	            </div>
	            	            <div class="form-group">
	               <label for="math">MATH :</label><br>
	               <input type="text" name="math" id="math">
	            </div>
	            <div class="form-group">
	               <input type="submit" name="result" id="result" value="성적처리프로그램입니다." class="btn btn-success">
	            </div>
	         </fieldset>
	      </form>
	
		</div>
	</body>
</html>