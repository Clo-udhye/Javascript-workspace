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
		// jQuery식으로 이벤트처리
		/*
		$('#btn1').on('click', function(){
			console.log('btn1 click');
		});
		
		//$('#btn2').on('mouseover', function(){
		//	console.log('btn2 mouseover');
		//});
		
		$('#btn2').on('click', function(){
			console.log('btn2 click');
		});
		*/
		
		// swing MouseListener비슷 
		/*
		$('button').on('click', function(){
			console.log($(this).text());
			console.log($(this).attr('id'));
		});
		*/
		
		//$('#btn1').click(function(){
		$('#btn1').click(() => {
			console.log('btn1 click');
		});
	});
	
</script>
</head>
<body>
<button id="btn1">이벤트1</button>
<button id="btn2">이벤트2</button>

</body>
</html>