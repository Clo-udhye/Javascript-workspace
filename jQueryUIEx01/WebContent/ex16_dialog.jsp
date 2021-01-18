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
		$('#btn1').button().on('click', function(){
			//window.open / open
			// login
			open('https://m.daum.net', 'winopen', 'width=640,height=960');
		})
		
		$('#dialog').dialog({
			width : 500,
			height : 300,
			autoOpen : false,
			modal : false,
			resizable : false,
			buttons : {
				'취소' : function(){
					alert('취소');
					$(this).dialog('close');
				},
				'확인' : function(){
					alert('확인');
					$(this).dialog('close');
				}
			},
			show : { //열릴때 애니메이션 효과
				effect : 'blind',
				duration :1000 //지속시간
			},
			hide : { //닫힐때 애니메이션 효과
				effect : 'explode',
				duration :1000
			},
		});
		
		$('#btn2').button().on('click', function(){
			$('#dialog').dialog('open');
		});
		
		$('#btn3').button().on('click', function(){
			$('#dialog').dialog('close');
		});
	});
</script>
</head>
<body>

<button id="btn1">창열기 1</button>
<button id="btn2">창열기 2</button>
<button id="btn3">창닫기 1</button>

<br/><hr/>
<div id="dialog" title="jQuery Dialog">
	<h1>Hello jQuery</h1>
	<h1>Hello jQuery</h1>
	<h1>Hello jQuery</h1>
</div>

</body>
</html>