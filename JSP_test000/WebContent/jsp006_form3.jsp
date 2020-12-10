<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h3> FORM-LOCAL SEARCH</h3>
		<form action = "jsp006_result.jsp" method="get">
		<fieldset>
		<legend> search</legend>
		<div>
			<label for="search">SEARCH</label>
			<input type="text" id="search" name="query"/>
		</div>
		<div>
			<input type="submit" value="검색"/>
		</div>
		</fieldset>
		</form>
	</div>
</body>
</html>