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
		$('h2.c1').css('color','green');
		$('.c2.c3').css('color','blue');	//클래스가 두개
	});

</script>
</head>
<body>

<h1 class="c1">Hello jQuery</h1>
<h2 class="c1">Hello jQuery</h2>
<h1 class="c2">Hello jQuery</h1>
<h2 class="c2 c3">Hello jQuery</h2>

</body>
</html>