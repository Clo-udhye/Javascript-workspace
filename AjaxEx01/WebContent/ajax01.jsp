<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//화살표함수로 고치기
	/*
	window.onload = function(){
		document.getElementById('btn').onclick = function(){
			alert('클릭');
		};
	};
	*/
	
	window.onload = () => {
		document.getElementById('btn').onclick = () => {
			//alert('클릭');
			const request = new XMLHttpRequest();
			// 환경설정
			// 동기방식
			request.open('GET', './data/data.csv', false);
			//크로스도메인 문제
			//request.open('GET', 'http://localhost:8080/AjaxEx01/data/data.csv', false);
			//request.open('GET', 'http://192.168.0.8:8080/AjaxEx01/data/data.csv', false);
			
			request.send();
			
			//console.log(request.responseText);
			
			const data = request.responseText.trim();
			const rowdata = data.split('\n');
			
			let result = '<table border="1">';
			for(let i=0; i<rowdata.length; i++){
				let coldata = rowdata[i].split(",");
				result += '<tr>';
				result += '<td>'+ coldata[0] +'</td>';
				result += '<td>'+ coldata[1] +'</td>';
				result += '<td>'+ coldata[2] +'</td>';
				result += '<td>'+ coldata[3] +'</td>';
				result += '</tr>';
			}
			result += '</table>';
			
			document.getElementById('result').innerHTML = result;
		};
	};
</script>
</head>
<body>

<button id="btn">요청하기</button>
<div id="result"></div>

</body>
</html>