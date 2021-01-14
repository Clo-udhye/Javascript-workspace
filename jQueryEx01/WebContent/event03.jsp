<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		$('h2').on('click', function(){
			console.log('click');
			$(this).off();
		});
		*/

		// 한번만 실행하는 이벤트함수
		$('h2').one('click', function(){
			console.log('click');
		});
	});
	
</script>
</head>
<body>

<h2>Header - 0</h2>
<h2>Header - 0</h2>
<h2>Header - 0</h2>
<h2>Header - 0</h2>

</body>
</html>