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
		document.getElementById('btn1').onclick = function() {
			// 태그의 생성
			// $('<h2>Hello jQuery</h2>');
			// appendTo(B) / prependTo(B)
			// insertBefore(B) / insertAfter(B)
			
			//$('<h2>Hello jQuery</h2>').appendTo('div');
			$('<h2></h2>').html('Hello jQuery').appendTo('div');
		};
		
		document.getElementById('btn2').onclick = function() {
			/*
			$('<img />').attr('src','./images/Desert.jpg')
						.attr('width', '512')
						.attr('height', '384')
						.appendTo('div');
			*/
			$('<img />',
					{
						'src': './images/Jellyfish.jpg',
						'width': '512',
						'height': '394'
					}).appendTo('div');
		};
	});
	
</script>
</head>
<body>

<button id="btn1">태그추가</button>
<button id="btn2">이미지 태그 추가</button>

<br /><hr /><br />

<div id="result"></div>

</body>
</html>