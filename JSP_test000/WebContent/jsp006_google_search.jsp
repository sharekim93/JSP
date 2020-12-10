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
<title>구글검색</title>
</head>
<body>
	<div class="container well">
		<h1>form basic</h1>
		<p>search</p>
		<form action="https://www.google.com/search?" method="get">
			<div class="form-group">
				<label for="search">GOOGLE 검색</label>
				<input type="text" name="q" id="search" class="form-control">
			</div>
			<div class="form-group">
				<input type="submit" value="검색" class="btn btn-danger">
			</div>
		</form>	
	</div>

	
</body>
</html>