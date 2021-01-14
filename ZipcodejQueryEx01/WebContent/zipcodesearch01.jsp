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
		$('#btn1').on('click', function(){
			//const strDong = document.getElementById('dong').value.trim();
			const strDong = $('#dong').val();
			
			// 입력값 검사
			if( strDong == '' ) {
				alert( '동이름을 입력해 주세요' );
				return;
			}
			if( strDong.length == 1 ) {
				alert( '두글자 이상 입력해 주세요' );
				return;
			}
			
			$.ajax({
				url : './data/xml.jsp',
				type : 'get',
				data : {
					'strDong' : strDong
				},
				success : function(xmlData){
					let result = "<table width='800' border='1'>";
					result += "<tr>";
					result += "<td>seq</td><td>우편번호</td><td>시도</td><td>구군</td><td>동</td><td>리</td><td>번지</td>";
					result += "</tr>";
					
					$(xmlData).find('address').each(function(){
						result += "<tr>";
						/*
						result += "<td>"+ $(this).find('seq').text() + "</td>";
						result += "<td>"+ $(this).find('zipcode').text() + "</td>";
						result += "<td>"+ $(this).find('sido').html() + "</td>";
						result += "<td>"+ $(this).find('gugun').html() + "</td>";
						result += "<td>"+ $(this).find('dong').html() + "</td>";
						result += "<td>"+ $(this).find('ri').html() + "</td>";
						result += "<td>"+ $(this).find('bunji').html() + "</td>";
						*/
						
						$(this).find('> *').each(function(){
							result += '<td>'+$(this).html()+'</td>';
						});
						
						result += "<tr>";
					});
					
					result += "</table>";
					$('#result').html(result);
					
				},
				error : function(){
				}
			});		
		});
	});
</script>
</head>
<body>

동이름<input type="text" id="dong" size="30" />
<button id="btn1">우편번호 찾기</button>

<hr /><br />

<div id="result"></div>

</body>
</html>