<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<%--
	AJAX:Asynchronous JavaScript And XML(JSon)
	비동기
	
	AXIOS: Vue,react
	
	html
	<a href=
	<form submit
	
	JavaScript
	location.href=
	
	Java
	forward
	sendRedirect
 --%>
 
<p id="demo"></p>

<button type="button">button</button>

<script type="text/javascript">
$(document).ready(function(){
	
	$("button").click(function(){
		
		//$("#demo").load("default.html");
		
		//$("#demo").load("default.html #ptag");
		
		//$("#demo").load("data.jsp","name=John&age=24");
		
		//$("#demo").load("data.jsp",{name:"Tom",age:26});
		$("#demo").load(
			//불러올 파일
			"data.jsp",
			//불러올 부분에 세팅 값
			{"name":"춘향이","age":16}, 
			//data.jsp에 갔다온 후, 작업의 결과
			function(data,status,xhr){
				//alert("success");
				//alert(data);
				//alert(status); //성공여부
				alert(JSON.stringify(xhr)); //JSon
			}
		);
	})
})


</script>


</body>
</html>