<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
	body { font-size : 80%; }
	.ui-tabs { width : 80%; }	
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#tabs').tabs();
				
		$('#btn1').button().on('click', function(){
			for(let dan=1; dan<=9; dan++){
				$('#tabs').tabs().find('.ui-tabs-nav').append('<li><a href="#tabs'+dan+'">'+dan+'단</a></li>');
				
				let html = '<div id="tabs'+dan+'"><p>';
				for(let i=1; i<=9; i++){
						html += dan +'x'+ i + '=' + (dan*i) + '<br />';
				}
				html += '</p></div>';
				$('#tabs').tabs().append(html);
				$('#tabs').tabs('refresh');	
			}
		});
	});
</script>
</head>
<body>
<button id="btn1">구구단 보이기</button>

<div id="tabs">
  <ul>
  </ul>
</div>

</body>
</html>