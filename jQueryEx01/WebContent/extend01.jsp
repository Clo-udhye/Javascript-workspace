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
		//객체선언
		let object = {name: '홍길동'};
		console.log(object);
		
		//객체 추가
		object.region1 = '서울시 종로구';
		object.part1 = '리더';
		console.log(object);
		
		$.extend(object,
				{ region2: '서울시 강남구', part2: '베이스1'},
				{ region3: '서울시 강남구', part3: '베이스2'},
		);
		console.log(object);
		
		$.each(object, (key, value) => {
			console.log(key, value);
		});
	});

</script>
</head>
<body>

</body>
</html>