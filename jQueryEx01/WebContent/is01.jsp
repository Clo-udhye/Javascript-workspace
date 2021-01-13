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
		$('h2').each(function() {
			if($(this).is('.select')){
				$(this).css('color', 'orange');
			}
		});
		
		if($('h3').is('#id')){
			$('h3').css('color', 'red');	
		}
		
	});
	
</script>
</head>
<body>

<h2>item - 0</h2>
<h2 class='select'>item - 1</h2>
<h2>item - 2</h2>
<h2>item - 3</h2>

<h3 id='id'>header1</h3>

</body>
</html>