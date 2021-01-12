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
		// 속성
		// 요소[속성=값] / 요소[속성!=값]
		$('input[type="text"]').css('backgroundColor','red');
		//$('input[type="password"]').css('backgroundColor','blue');
		$('input[type^="pa"]').css('backgroundColor','blue');
		
	});

</script>
</head>
<body>

<input type="text" /><br />
<input type="password" /><br />

</body>
</html>