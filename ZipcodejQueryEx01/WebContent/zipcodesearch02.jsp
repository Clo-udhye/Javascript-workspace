<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/base/jquery-ui.css" />
<style type="text/css">
	body { font-size : 80% };
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#accordion').accordion();
		$('#dong').button().addClass('text');
		$('#btn').button().on('click', function(){
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
					$('#accordion').html('');
					
					$(xmlData).find('address').each(function(){
						let data = '';
						data += '<h3>'+$(this).find('zipcode').html()+'</h3>';
						data += '<div>';
						data += '	<p>';
						data += $(this).find('sido').html() + ' ';
						data += $(this).find('gugun').html() + ' ';
						data += $(this).find('dong').html() + ' ';
						data += $(this).find('ri').html() + ' ';
						data += $(this).find('bunji').html();  
						data += '	</p>';
						data += '</div>';
						
						$('#accordion').append(data);
					});
					
					$('#accordion').accordion('refresh');
				},
				error : function(){
				}
			});		
		});
	});
</script>
</head>
<body>

<fieldset>
	<legend>우편번호 검색기</legend>
	<label>동이름 : </label>
	<input type="text" id="dong" />
	<button id="btn">우편번호 검색 출력</button>
</fieldset>
<br /><hr /><br />
<div id="accordion"></div>

</body>
</html>