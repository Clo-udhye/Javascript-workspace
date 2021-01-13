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
		// 선택된것에서만 다시 필터 
		//$('h2').css('background-color', 'orange').filter(':even').css('color', 'red').filter(':odd').css('color', 'blue');
		
		//$('h2').css('background-color', 'orange');
		//$('h2').filter(':even').css('color', 'red');
		//$('h2').filter(':odd').css('color', 'blue');
		
		// => .end()로 다음필터의 입력 범위 초기화...
		$('h2').css('background-color', 'orange').filter(':even').css('color', 'red').end().filter(':odd').css('color', 'blue');
		
	});
	
</script>
</head>
<body>

<h2>item -0</h2>
<h2>item -1</h2>
<h2>item -2</h2>
<h2>item -3</h2>

</body>
</html>