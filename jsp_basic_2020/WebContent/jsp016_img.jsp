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
	<style>
		.myimg{
		width:40%}
	</style>
	</head>
	<body>
		<div class="container panel panel-info">
			<h3 class="panel-heading"> 이미지</h3>
			<p> src = "경로" / alt = "대체용어"</p>
			<p><img src="A00_21390516_1474135840.png" alt="레릿고" class="myimg"></p>
			<h3 class="panel-heading">이미지경로가 잘못되면 alt가 읽힘</h3>
			<p><img src="./images/A00_21390516_14741358410.png" alt="레릿고" class="myimg"></p>
			<h3 class="panel-heading">폴더에 있는 이미지 파일</h3>
			<p><img src="./images/A00_21390516_1474135840.png" alt="레릿고" class="myimg"></p>
			<h3 class="panel-heading">폴더 안에 JSP 파일 복사해서 넣기</h3>
			<p><img src="../A00_21390516_1474135840.png" alt="레릿고" class="myimg"></p>
			<h3 class="panel-heading">이미지 클릭 시 naver,구글,다음으로 넘어가도록 링크 걸기</h3>
			<p><a href="https://www.naver.com/"><img src="./images/naver.png" alt="레릿고" class="myimg" id="letitgo"></a></p>
			<p><a href="https://www.google.com/"><img src="./images/google.jpg" alt="레릿고" class="myimg" id="letitgo"></a></p>
			<p><a href="https://www.daum.net/"><img src="images/daum.jpg" alt="레릿고" class="myimg" id="letitgo"></a></p>
		</div>
	</body>
</html>