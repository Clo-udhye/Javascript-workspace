<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#canvas { border: 1px solid black; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {	
		//$('#canvas').on('click', function(e){
		//	console.log('clickX :',e.pageX);
		//	console.log('clickY :',e.pageY);
		//});
		
		const canvas = document.getElementById('canvas');
		const context = canvas.getContext('2d');
		
		$('#canvas').on({
			mousedown: function(e){
				const x = e.pageX;
				const y = e.pageY;
				
				context.beginPath();
				context.moveTo(x,y);
			},
			mouseup: function(e){
				const x = e.pageX;
				const y = e.pageY;
				
				context.lineTo(x,y);
				context.stroke();	// 실제로 선을 긋는것
			}
		});
	});
	
</script>
</head>
<body>

<canvas id="canvas" width="700" heigth="400"></canvas>

</body>
</html>