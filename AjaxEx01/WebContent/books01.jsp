<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = () => {
		document.getElementById('btn').onclick = () => {
			const request = new XMLHttpRequest();
			request.onreadystatechange = () =>{
				if(request.readyState == 4){
					if(request.status == 200){
						// 성공일때 처리
						//console.log(request.responseText)
						
						const data = request.responseText.trim();
						const rowdatas = data.split('\n');
						
						let result = '<table width="800" border="1">';
						for(let i=0; i<rowdatas.length; i++){
							let coldatas = rowdatas[i].split(",");
							result += '<tr>';
							result += '		<td>'+ coldatas[0] +'</td>';
							result += '		<td>'+ coldatas[1] +'</td>';
							result += '		<td>'+ coldatas[2] +'</td>';
							result += '		<td>'+ coldatas[3] +'</td>';
							result += '</tr>';
						}
						result += '</table>';
						document.getElementById('result').innerHTML = result;
					} else{
						alert('에러페이지')
					}
				}
			};
			request.open('GET', './data/csv.jsp', true);
			request.send();
		};
	};
</script>
</head>
<body>

<button id="btn">요청하기</button>
<div id="result"></div>

</body>
</html>