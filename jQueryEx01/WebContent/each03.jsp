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
		const object = { name: 'daum', link: 'https://www.daum.net'};	// key : item
		
		$.each(object, (key, item) => {
			console.log(key, item);
		});
	});
</script>
</head>
<body>

</body>
</html>