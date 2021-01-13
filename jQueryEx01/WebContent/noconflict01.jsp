<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$.noConflict();
	
	//$(document).ready(function()	// 에러
	
	//jQuery(document).ready(function()
	const J = jQuery;
	J(document).ready(function(){
		// noconflict 충돌방지
		// $
		//console.log('Hello jQuery');
		
		let object = {name: '홍길동'};
		J.extend(object,
				{ region2: '서울시 강남구', part2: '베이스1'}
		);
		
		console.log(object);
		
		J.each(object, (key, value) => {
			console.log(key, value);
		});
	}); 
	
</script>
</head>
<body>

</body>
</html>