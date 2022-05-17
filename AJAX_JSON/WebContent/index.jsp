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

<p id="demo"></p>
<br>
<button type="button">button</button>

<script type="text/javascript">
$(document).ready(function() {
	
	$("button").click(function(){
	
		$.ajax({
			
			url:"data.json",
			type:"get",
			datatype:"json", //생략가능
			success:function(data){
				//alert('success');
				//alert(data);
				
				let str=JSON.stringify(data);
				//alert(str);
				
				//alert(data.length);
				//alert(data[0]);
				//alert(data[1].name);
				
			/* 	for(i=0;i<data.length;i++){
					//document.getElementById("demo").innerHTML="이름: "+data[0].name+" 나이: "+data[0].age+" 주소: "+data[0].address+" 번호: "+data[0].phone;
				 	$("#demo").append(data[i].name+" ");
					$("#demo").append(data[i].age+" ");
					$("#demo").append(data[i].address+" ");
					$("#demo").append(data[i].phone+"<br>"); 
					
					
				} */
				$.each(data,function(index,item){
					$("#demo").append(item.name+" ");
					$("#demo").append(item.age+" ");
					$("#demo").append(item.address+" ");
					$("#demo").append(item.phone+"<br>");
				})
				
				
			},
			error:function(){
				alert('error');
			}
			
		});
		
	})
	
	
})



</script>

</body>
</html>