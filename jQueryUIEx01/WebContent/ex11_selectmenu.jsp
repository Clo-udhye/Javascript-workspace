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
		$("#files1").selectmenu({
			width : 500,
			change : function(event, ui){
				console.log($(this).val());
				console.log(ui.item.value);
			}
		});
		
		$("#files2").selectmenu({
			width : 500,
			change : function(event, ui){
				console.log($(this).val());
				console.log(ui.item.value);
			}
		});
		
		$('#btn').button().on('click', function(){
			console.log($('#files1').val());
			console.log($('#files2').val());
		});
	});
</script>
</head>
<body>
	<select id="files1">
		<option value="jquery">jQuery.js</option>
		<option value="jqueryui">ui.jQuery.js</option>
		<option value="somefile">some unkown file</option>
	</select>
	
	<br /><br />
	
	<select id="files2">
		<optgroup label="Script"> <!-- 카테고리이름 -->
			<option value="jquery">jQuery.js</option>
			<option value="jqueryui">ui.jQuery.js</option>
		</optgroup>
		<optgroup label="Other Files">
			<option value="somefile">some unkown file</option>
			<option value="somefile">some unkown file</option>
		</optgroup>
	</select>
	
	<br /><hr /><br />
	
	<button id="btn">가져오기</button>
</body>
</html>