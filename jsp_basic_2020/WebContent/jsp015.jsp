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
			<h3 class="panle-heading">001. 출력</h3>
			<p class="well"> 브라우저에서 확인 : consoloe.log("하고싶은 말");</p>
			<script>
				console.log("001. 출력");
				console.log("하고싶은 말");
				//console.log("김나눔");
			</script>
		</div>
		<div class="container panel panel-info">
			<h3 class="panel-heading">002. 변수 + 자료형</h3>
			<p  class="well"> 자바스크립트는 변수 만들 때 var 변수명;</p>
			<script>
				var data0;
				var data1 = 10;
				var data2 = 3.14;
				var data3 = "abc";
				var data4 = true;
				var data5 = ["apple","banana",3,true];
				var data6 = {}; //오브젝트
				var data7 = function(){};//함수
				
				console.log(data0);//undefined
				console.log(data1);//10
				console.log(data2);//3.14
				console.log(data3);//abc
				console.log(data4);//true
				console.log(data5);//Array
				console.log(data6);//Object
				console.log(data7);//f(){}
				console.log(typeof(data7));//데이터 타입 확인
				
				console.log("003. 연산자")
				console.log(data1+data2)
				console.log(data1-data2)
				console.log(data1*data2)
				console.log(data1/data2)
			</script>
		</div>
		
		<div class="container panel panel-info">
			<h3 class="panel-heading">003. 이벤트</h3>
			<p class="well"> 이벤트대상, 이벤트, 이벤트 핸들러</p>
			<p><input type="button" class="btn btn-success" value="CLICK1-javascript: DOM0" onclick="alert('haha');"/></p>
			<p><input type="button" class="btn btn-info" value="CLICK1-javascript: DOM2" id="dom2"/></p>
		<script>
		///////////////////////////////안 쓰는 방법
		//	window.onload = fuction();//브라우저가 로딩이 끝나면 다음과 같이 해주세요. 이 문장이 없으면 처리가 제대로 안 됨.
		//	document.getElementById("dom2").onclick = function(){alert('hoho');};
			// 대상 : document.getElementById("dom2")
			// 이벤트 : onclick
			// 이벤트 핸들러 : fuction()
			
		//////////////////////////////jquery
		//$(대상) - jquery에게 대상을 찾으라는 명령어
		$(document).ready(function(){
			$("#myjquery").click(function(){
				alert("Hello");
			})
		})
			//대상 : document
			//이벤트 :  ready 준비확인
			//이벤트핸들러 : function()
		</script>
		</div>
		
		<div class="container panel panel-info">
			<h3 class="panel-heading">003. 이벤트연습</h3>
			<p  class="well"> 이벤트 대상, 이벤트, 이벤트 핸들러	</p>
			<p><input type="button" class="btn btn-warning" value="jquery1" id="ex1"/></p>	
			<p><input type="button" class="btn btn-info" value="jquery2" id="ex2"/></p>	
			<p><input type="button" class="btn btn-danger" value="jquery3" id="ex3"/></p>
			
			<script>
			$(document).ready(function(){
				$("#ex1").click(function(){
					alert("김나눔");
				})
				$("#ex2").click(function(){
					alert("10+3=13");
				})
				$("#ex3").click(function(){
					alert("이벤트대상 #ex3");
				})
			}
			);	
			</script>
		</div>
		
		<div class="container panel panel-success">
			<h3 class="panel-heading">004. 제어문</h3>
			<p  class="well"> if(조건){true}else{false};</p>
			
			<script>
			var data=2;
			if(data==2){console.log("if : 2이다");}
			else{console.log("if: 2가 아니다");}
			
			switch(data){
			case 1 : console.log("switch : 1이다");
			case 2 : console.log("switch : 2이다");
			case 3 : console.log("switch : 3이다");
			}			
			</script>
		</div>
		
		<div class="container panel panel-success">
			<h3 class="panel-heading">004-2. 제어문</h3>
			<p><input type="text" class="form-control" title="이메일 입력" id="myinput"></p>
			<p><input type="button" class="btn btn-warning" value="CONTROL-IF" id="myif"></p>
			<script>
			$(document).ready(function(){
				$("#myif").click(function(){
					console.log($("#myinput"));
					console.log($("#myinput").val())
					if($("#myinput").val() == ""){alert("빈칸입니다.");}
				})
			});
			
			</script>
			
			<h3 class="panel-heading">004-3. 제어문 연습문제</h3>
			<!-- #if1버튼 클릭 시 #input1에 들어가 있는 나이값 알림창 -->
			<p><input type="text" class="form-control" title="나이입력" placeholder="나이입력" id="input1"></p>
			<p><input type="button" value="CONTROL-IF" class="btn btn-warning" id="if1"></p>
			
			<!-- #if2버튼 클릭 시 #input2에 들어가 있는 숫자에 100 곱한 값 알림창 -->
			<p><input type="text" class="form-control" title="숫자" placeholder="입력한 숫자에 100 곱한 값 알림창" id="input2"></p>
			<p><input type="button" value="CONTROL-IF" class="btn btn-warning" id="if2"></p>
			
			<script>
			$(document).ready(function(){
				$("#if1").click(function(){
					alert($("#input1").val());
				})
				$("#if2").click(function(){
					alert($("#input2").val()*100);
				})
			})			
			</script>
			
			<h3 class="panel-heading">004-4. 제어문 연습문제2</h3>
			<p class="well">
			1. 처리경로 : https://search.naver.com/search.naver<br/>
			2. 처리방식 : 주소표시창 노출<br/>
			3. name값 : query - 빈칸검사
			</p>
			<form action="https://search.naver.com/search.naver" method="get" id="myform">
			<fieldset>
			<legend>MY SERVER 검색</legend>
			<div class="form-group">
				<label for="search"> 검색</label>
				<input type="text" name="query" id="search" class="form-control" placeholder="검색입니다.">			
			</div>
			<div class="from group">
				<input type="submit" value="검색" class="btn btn-danger" id="submit">
			</div>
			</fieldset>			
			</form>
			<script>
				$(document).ready(function(){
					$("#submit").click(function(){
					if($("#search").val()==""){alert("빈칸이 입력되었습니다");return false;}
					})
				});
			</script>
		</div>		
	</body>
</html>