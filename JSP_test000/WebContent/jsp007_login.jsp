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
	<div class="container well">
		<h3>FORM BASIC - LOGIN</h3>
		<form action="jsp007_result.jsp" method="get">
		<fieldset>
		<legend>search</legend>
		<div class="form-group">
			<label for= "id">Email:</label>
			<input type="text" name="email" id=id class="form-control">
		</div>
		<div class="form-group">
			<label for="password">Password:</label>
			<input type="text" name="pass" id=password class="form-control">
		</div>
		<div>
			<input type="submit" value="LOGIN" class="btn btn-danger">
		</div>
		</fieldset>
		</form>
	</div>
</body>
</html>