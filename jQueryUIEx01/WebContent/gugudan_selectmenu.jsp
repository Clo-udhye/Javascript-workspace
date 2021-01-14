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
		$('#startDan, #endDan').selectmenu({
			width : 200
		});
		
		$('#btn').button().on('click', function(){
			//console.log($('#startDan').val(), $('#endDan').val());
			let startDan = $('#startDan').val();
			let endDan = $('#endDan').val();
			let result = '<table border="1" width="900">'
			for(let i=startDan; i<=endDan; i++){
				result += '<tr>';
				for(let j=1; j<=9; j++){
					result += '<td>'+ i+'x'+j+'='+i*j + '</td>';
				}
				result += '</tr>';
			}
			
			$('#result').html(result);
		});
	
	});
</script>
</head>
<body>
<select id="startDan">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
</select>
~
<select id="endDan">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	</select>
	
<button id="btn">구구단출력</button>
<br /><hr /><br />
<div id="result"></div>

</body>
</html>