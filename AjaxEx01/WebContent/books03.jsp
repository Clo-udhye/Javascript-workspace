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
					
					let result = '<table width="800" border="1">';
					if(request.status == 200){		
						//console.log(request.responseText);						
						const jsonData = JSON.parse(request.responseText); //문자열을 json객체화
						console.log(jsonData);
						console.log(jsonData.length);
						console.log(jsonData[0].name);
						console.log(jsonData[0].price);
			
						//table디자인에 넣어서 출력
						
						for(let rows=0; rows<jsonData.length; rows++){
							result += '<tr>';
							
							result += '<td>'+jsonData[rows].name+'</td>';
							result += '<td>'+jsonData[rows].publisher+'</td>';
							result += '<td>'+jsonData[rows].author+'</td>';
							result += '<td>'+jsonData[rows].price+'</td>';
							
							result += '</tr>';
						}
						result += '</table>';
					} else{
						alert('에러페이지')
					}
					
					document.getElementById('result').innerHTML = result;
				}
			};
			request.open('GET', './data/json3.jsp', true);
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