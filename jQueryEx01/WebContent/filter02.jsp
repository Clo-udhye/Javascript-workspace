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
		$('h2').filter(function(index, item){ // 필터를 통과한것에 대해서 한행씩 데이터를 뽑아낼수있다.
			//console.log(index, item.innerHTML);
			return index%2 == 0;		//return이 true일때만 적용	
		}).css('background-color', 'yellow');
	});
	
</script>
</head>
<body>

<h2>item -0</h2>
<h2>item -1</h2>
<h2>item -2</h2>
<h2>item -3</h2>

</body>
</html>