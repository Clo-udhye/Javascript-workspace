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
		const array = [
			{ name: 'daum', link: 'https://www.daum.net'},
			{ name: 'naver', link: 'https://www.naver.com'},
			{ name: 'google', link: 'https://www.google.com'}
			
		];
		
		let output = '';
		$.each(array, (index, item) => {
			//console.log(index, item.name, item.link);
			output += '<a href="'+ item.link +'">';
			output += '<h3>' + item.name + '</h3>';
			output += '</a><br />';
		});
		
		document.body.innerHTML = output;
	});
</script>
</head>
<body>

</body>
</html>