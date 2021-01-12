<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 순서
		$('table').css('width','800');
		$('tr:odd').css('backgroundColor','#f9f9f9');
		$('tr:even').css('backgroundColor','#9f9f9f');
		
		//$('tr:first').css('backgroundColor','#000000');
		//$('tr:first').css('color','#ffffff');
		$('tr:first').css({
			'backgroundColor' : '#000000',
			'color' : '#ffffff'	
		});
	});

</script>
</head>
<body>

<table>
<tr>
	<th>이름</th>
	<th>혈액형</th>
	<th>지역</th>
</tr>
<tr>
	<td>강민수</td>
	<td>AB</td>
	<td>송파구</td>
</tr>
<tr>
	<td>강민수</td>
	<td>AB</td>
	<td>송파구</td>
</tr>
<tr>
	<td>강민수</td>
	<td>AB</td>
	<td>송파구</td>
</tr>
<tr>
	<td>강민수</td>
	<td>AB</td>
	<td>송파구</td>
</tr>
<tr>
	<td>강민수</td>
	<td>AB</td>
	<td>송파구</td>
</tr>
</table>

</body>
</html>