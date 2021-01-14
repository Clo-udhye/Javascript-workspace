<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btn').on('click', () => {
			$.ajax({
				url : './data/xml1.jsp',
				type : 'get',
				//dataType : 'text', //'xml', //없을시 header에의해 자동판별
				success : function(data) {
					console.log('성공');
					//console.log(typeof data);
					//console.log(data);
					let result = '<table border="1">';
					result += '<tr><th>제목</th><th>출판사</th><th>작가</th><th>가격</th></tr>';
					$(data).find('book').each(function(){
						result += '<tr>';
						//result += '<td>'+$(this).find('name').html()+'</td>';
						result += '<td>'+$(this).find('name').text()+'</td>';
						result += '<td>'+$(this).find('publisher').text()+'</td>';
						result += '<td>'+$(this).find('author').text()+'</td>';
						result += '<td>'+$(this).find('price').text()+'</td>';
						result += '</tr>';
					})
					
					$('#result').html(result);
				},
				error : function() {
					console.log('실패');
				} 
			});
		});
	});
</script>
</head>
<body>

<button id="btn">요청</button>
<br /><hr /><br />
<div id="result"></div>

</body>
</html>