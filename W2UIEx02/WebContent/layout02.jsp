<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/w2ui-1.5.rc1.min.css" />
<style type="text/css">
	#wrap {
		margin : 0 auto;
		width : 960px;
		height : 500px;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/w2ui-1.5.rc1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		const pstyle = 'backgroud-color: #f5f6f7; border: 1px solid #dfdfdf; padding: 5px';
		$('#wrap').w2layout({
			name: 'layout',
			panels: [ 
				{type: 'top', style: pstyle, resizable: true, content: 'top', size: 50},
				{type: 'bottom', style: pstyle, resizable: true, content: 'bottom', size: 50},
				{type: 'left', style: pstyle, resizable: true, content: 'left', size: 200},
				{type: 'right', style: pstyle, resizable: true, content: 'right', size: 200},
				{type: 'main', style: pstyle, resizable: true, content: 'main'},
				{type: 'preview', style: pstyle, resizable: true, content: '<h1>preview</h1>', size: '50%'}
			]
		});
	});
</script>
</head>
<body>

<div id="wrap"></div>

</body>
</html>