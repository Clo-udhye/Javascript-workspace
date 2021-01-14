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
		// 이벤트 객체 e
		$('h2').on('click', function(e){
			//console.log('click :',e);
			// 이벤트가 발생한 좌표값
			console.log('clickX :',e.pageX);
			console.log('clickY :',e.pageY);
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