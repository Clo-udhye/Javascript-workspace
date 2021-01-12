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
	//$(CSS 셀렉터) - html 태그 선택 (문서선택)
	//$('*') - 모든 html에 대해서
	//$('*').메서드 - 기능
	//ex) $('*').css('color','red')
	$(document).ready(function(){
		//alert('Hello jQuery');
		//$('*').css('color','red');
		$('*').css({
			'color':'red'
			});
	});

</script>
</head>
<body>

</body>
</html>