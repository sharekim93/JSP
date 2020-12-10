<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>FORM : 서버쪽으로 정보를 전송하는 태그</h3>
		<p>action = "처리해주세요" method="내용전송방법" name "데이터 전송 보관용기 이름"<p>
		<form action="https://search.naver.com/search.naver?" method="get">
			<fieldset><!-- form 태그 안의 영역 -->
			<legend> 웹표준 폼</legend><!-- form 태그 안의 영역 -->
			<div><!-- label + input -->
				<label for="search">검색 :</label>
				<input type="text" name="query" id="search" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="전송" class="btn btn-danger"/>
			</div>
			</fieldset>
		</form>
	</div>
</body>
</html>