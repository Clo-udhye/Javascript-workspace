<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.js"></script> --> <!-- 개발자버전 -->
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script> -->	<!-- 서비스버전 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- Google CDN -->
<script type="text/javascript">
	//ex) $(tag / id / class).css('color','red')
	$(document).ready(function(){
		$('body').css('backgroundColor','yellow');	
		$('#h2').css('color','green');
	});

</script>
</head>
<body>

<h1 id="h1">Hello jQuery</h1>
<h2 id="h2">Hello jQuery</h2>
<h1 id="h3">Hello jQuery</h1>
<h2 id="h4">Hello jQuery</h2>

</body>
</html>