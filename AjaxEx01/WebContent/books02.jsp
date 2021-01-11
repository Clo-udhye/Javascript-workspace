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
						// 문자열 - 문자열API이용해서 분석
						//console.log(request.responseText);
						// XML Dom객체 - DOM API
						// https://www.w3schools.com/xml/dom_intro.asp
						//console.log(request.responseXML);
						
						const xmlData = request.responseXML;
						
						const names = xmlData.getElementsByTagName('name');
						const publishers = xmlData.getElementsByTagName('publisher');
						const authors = xmlData.getElementsByTagName('author');
						const prices = xmlData.getElementsByTagName('price');
						//console.log(names);
						//console.log(names.length);
						//console.log(prices);
						
						for(let i=0; i<names.length; i++){
							let nameValue = names[i].childNodes[0].nodeValue;
							let publisherValue = publishers[i].childNodes[0].nodeValue;
							let authorValue = authors[i].childNodes[0].nodeValue;
							let pricesValue = prices[i].childNodes[0].nodeValue;
							console.log(nameValue, publisherValue, authorValue, pricesValue);
						}
						
					} else{
						alert('에러페이지')
					}
				}
			};
			request.open('GET', './data/xml2.jsp', true);
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