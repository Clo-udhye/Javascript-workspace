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
		document.getElementById('btn1').onclick = function() {
			//const src = $('img').attr('src');	// 하나만 출력
			//console.log(src);
			
			//$('img').each(function(){
			//	console.log($(this).attr('src'));
			//});
			
			$('img').attr('src', function(index, item){
				//console.log(item);
				console.log(this);
			});
		};
		
		document.getElementById('btn2').onclick = function(){
			//$('img').attr('height', 100);
				//$('img').attr('width', 100);
			
			$('img').attr('width', function(index){
				return (index+1)*100;
			});
		};
			
		document.getElementById('btn3').onclick = function(){
			$('img').removeAttr('width');
		};
			
		// 규정된 속성이 아니고 개발에 필요한 속성을 부여할수있다
		document.getElementById('btn4').onclick = function(){
			$('img').attr('data-index', function(index){
				return (index+1)*100;
			});
		};
			
		document.getElementById('btn5').onclick = function(){
			$('img').removeAttr('data-index');
		};
	});
	
</script>
</head>
<body>

<button id="btn1">이미지 내용</button>
<button id="btn2">이미지 추가</button>
<button id="btn3">속성 삭제</button>
<br /><hr /><br />
<button id="btn4">속성 추가</button>
<button id="btn5">속성 삭제</button>

<img src="./images/Chrysanthemum.jpg" width="150" />
<img src="./images/Desert.jpg" width="150" />
<img src="./images/Hydrangeas.jpg" width="150" />
<img src="./images/Jellyfish.jpg" width="150" />

</body>
</html>