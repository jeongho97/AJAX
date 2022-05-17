<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<%
	//Database 접근 가능
%>
name:<span id="name"></span><br>
age:<span id="age"></span><br>
birth:<input type="text" id="birth"><br>
<br><br>

<button type="button">클릭</button>

<script type="text/javascript">
$(document).ready(function() {
	
	$("button").click(function(){
		$.ajax({
			url:"data.jsp",
			type:"get",
			datatype:"json",
			success:function(data){
				
				//alert("success");
				//alert(data.trim());
				
				let json=JSON.parse(data.trim());
				//alert(json);
				
				$("#name").text(json.name);
				$("#age").text(json.age);
				$("#birth").val(json.birth);
				
				
			},
			error:function(){
				alert("error");
			}
			
		})
	})
	
})

</script>


</body>
</html>