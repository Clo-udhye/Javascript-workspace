<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
	body { font-size: 80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		  $("#datepicker1").datepicker({
			  //dateFormat:'yy-mm-dd',
			 // showAnim:'fadeIn'
			 // 한번에 여러개 보이게 할 수 있음
			 numberOfMonths: 3,
			 // 하단에 today & done이라는 버튼 패널 생성
			 showButtonPanel:true
		  });
		  
		  $("#datepicker2").datepicker();
		  
		  $( "#format" ).on( "change", function() {
		      $( "#datepicker1" ).datepicker( "option", "dateFormat", $( this ).val() );
		    });
		  
		  $( "#anim" ).on( "change", function() {
		      $( "#datepicker1" ).datepicker( "option", "showAnim", $( this ).val() );
		    });
	});
</script>

</head>
<body>
	<div>
		<!-- html5에서 제공하는 달력 -->
		<input type="date" />
	</div>
	<br><br>
	<div>
		<!-- 일종의 팝업같은 것이야 -->
		<input type="text" id="datepicker1" readonly="readonly" />
	</div>
<br><br>
	<div>
		<!-- Inline 방식 -->
		<div id="datepicker2"></div>
		
	</div>
	
<!-- text화된 데이트피커의 형식(format)을 변경할 수 있다. -->
	<p>Format options:<br>
  <select id="format">
    <option value="mm/dd/yy">Default - mm/dd/yy</option>
    <option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
    <option value="d M, y">Short - d M, y</option>
    <option value="d MM, y">Medium - d MM, y</option>
    <option value="DD, d MM, yy">Full - DD, d MM, yy</option>
    <option value="&apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy">With text - &apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy</option>
  </select>
</p>

<p>Animations:<br>
  <select id="anim">
    <option value="show">Show (default)</option>
    <option value="slideDown">Slide down</option>
    <option value="fadeIn">Fade in</option>
    <option value="blind">Blind (UI Effect)</option>
    <option value="bounce">Bounce (UI Effect)</option>
    <option value="clip">Clip (UI Effect)</option>
    <option value="drop">Drop (UI Effect)</option>
    <option value="fold">Fold (UI Effect)</option>
    <option value="slide">Slide (UI Effect)</option>
    <option value>None</option>
  </select>
</p>
</body>
</html>