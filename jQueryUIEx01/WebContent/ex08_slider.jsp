<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
	body { font-size : 80% };
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slider').slider({
			//orientation: 'vertical'
			value : 50,
			min : 0,
			max : 200,
			/*
			step: 25,	// 증가치를 정해줄수있다
			// 끌었다가 놓았을때 발생
			change : function(e, ui){	//e 이벤트객체, ui 디자인값 
				console.log('change');
				
				console.log($(this).slider('value'));
				console.log(ui.value); 
			}
			*/
			// 슬라이드 되는동안 지속적으로 발생
			slide : function(e, ui){
				console.log('slide');
			}
		});
	});
</script>
</head>
<body>
<div id="slider"></div>
</body>
</html>