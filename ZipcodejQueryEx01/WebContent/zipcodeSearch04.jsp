<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/w2ui-1.5.rc1.min.css" />
<style type="text/css">
	#wrap {
		margin : 0 auto;
		width : 960px;
		height : 500px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="./js/w2ui-1.5.rc1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		let datas = [];
		$('#wrap').w2grid({
			name: 'grid',
			show: {
				toolbar: true,
				footer: true,
				lineNumbers: true,
				toolbarReload: true,
				toolbarSarch: true
			},
			columns: [
				{field: 'zipcode', caption: '우편번호', size: '10%'},
				{field: 'sido', caption: '시도', size: '20%'},
				{field: 'gugun', caption: '구군', size: '20%'},
				{field: 'dong', caption: '동', size: '15%'},
				{field: 'ri', caption: '리', size: '15%'},
				{field: 'bunji', caption: '번지', size: '20%'},
			],
			records : datas,
			onSearch: function(target, e){
				console.log('onSearch 클릭');
				let grid = this;
				
				// ajax이용해서 우편번호검색
				$.ajax({
					url: './data/json.jsp',
					type: 'get',
					dataType: 'json',
					data : {
						strDong : e.searchData[0].value
					},
					success: function(json){
						grid.clear();
						
						$.each(json, function(key, value){
							grid.add({
								recid: this.grid+1,
								zipcode: value.zipcode, 
								sido: value.sido,
								gugun: value.gugun, 
								dong: value.dong,
								ri: value.ri,
								bunji: value.bunji
							});
						});
					},
					error: function(){
						alert('서버에러');
					}
				});
				
				// 디자인에 데이터넣기 -> api
				/*
				this.add(
						{recid: this.total+1, 
							zipcode:'111-111', 
							sido: 'sido', 
							gugun: 'gugun', 
							dong: 'dong', 
							ri: 'ri', 
							bunji: 'bunji' }
						);
				*/
				
				e.preventDefault();
			}			
		});
	});
</script>
</head>
<body>

<div id="wrap"></div>

</body>
</html>