<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//$('h2:even').css('color', 'red');
		//$('h2:even, h2:odd').css('color', 'red');
		//$('h2:even').css('color', 'red').add('h2:odd').css('color', 'blue');
		
		//셀렉터를 여러개 선택
		$("#h1").add("#h3").add("#h4").css("background-color", "yellow");
	});
	
</script>
</head>
<body>

<h2 id="h1">item -0</h2>
<h2 id="h2">item -1</h2>
<h2 id="h3">item -2</h2>
<h2 id="h4">item -3</h2>

</body>
</html>