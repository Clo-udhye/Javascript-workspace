<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// jquery에서 사용하는 메서드
	// 배열
	const array = [
		{ name: 'daum', link: 'https://www.daum.net'},
		{ name: 'naver', link: 'https://www.naver.com'},
		{ name: 'google', link: 'https://www.google.com'}
		
	];
	
	for(let i=0; i<array.length; i++){
		console.log(array[i].name, array[i].link);
	}
	
	for(let i in array){
		console.log(array[i].name, array[i].link);
	}
	
	for(let data of array){
		console.log(data.name, data.link);
	}
	
	//Array- forEach ECMAScript5
	//array.forEach(function(item){
	//	console.log(item.name, item.link);
	//});
	
	//Array- forEach ECMAScript6
	array.forEach((item) => {
		console.log(item.name, item.link);
	});
	
	// jQuery ECMAScript5
	//$.each(array, function(index, item){
	//	console.log(index, item.name, item.link); // index : 순서값
	//});
	
	// jQuery ECMAScript6
	$.each(array, (index, item) => {
		console.log(index, item.name, item.link); // index : 순서값
	});

</script>
</head>
<body>

</body>
</html>