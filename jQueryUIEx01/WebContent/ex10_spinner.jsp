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
		$('#spinner').spinner({
			min : 5,
			max : 155,
			step: 10,
			spin : function(){
				console.log($(this).spinner('value'))
			}
		});
		
		$('#btn').button().on('click', function(){
			//console.log($('#spinner').spinner('value'));
			$('#spinner').spinner('value', 105);
		})
	});
</script>
</head>
<body>

<input type="text" id="spinner" value="15" readonly="readonly"/>
<br /><hr /><br />
<button id="btn">값 확인</button>


</body>
</html>