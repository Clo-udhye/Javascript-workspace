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
			const strDong = document.getElementById('dong').value.trim();
			
			// 입력값 검사
			if( strDong == '' ) {
				alert( '동이름을 입력해 주세요' );
				return;
			}
			if( strDong.length == 1 ) {
				alert( '두글자 이상 입력해 주세요' );
				return;
			}
		
			const request = new XMLHttpRequest();
			request.onreadystatechange = () =>{
				if(request.readyState == 4){
					if(request.status == 200){
						const jsonData = JSON.parse(request.responseText);
						
						let result = "<table width='800' border='1'>";
						result += "<tr>";
						result += "<td>우편번호</td><td>시도</td><td>구군</td><td>동</td><td>리</td><td>번지</td>";
						result += "</tr>";
						for(let i=0; i<jsonData.length; i++){
							result += "<tr>";
							result += "<td>"+jsonData[i].zipcode+"</td>";
							result += "<td>"+jsonData[i].sido+"</td>";
							result += "<td>"+jsonData[i].gugun+"</td>";
							result += "<td>"+jsonData[i].dong+"</td>";
							result += "<td>"+jsonData[i].ri+"</td>";
							result += "<td>"+jsonData[i].bunji+"</td>";
							result += "<tr>";
						}			
						result += "</table>";
						
						document.getElementById('result').innerHTML = result;
						
					} else{
						alert('에러페이지')
					}
				}
			};
			request.open('GET', './data/json.jsp?strDong=' + strDong, true);
			request.send();
		};
	};
</script>
</head>
<body>

<form name="frm" >
동이름<input type="text" id="dong" size="30" />
<input type="button" id="btn" value="우편번호 찾기" />
</form>
<hr /><br />

<div id="result"></div>

</body>
</html>