<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</head>
<body>

<!-- sm 576px을 기준 -->
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3" style="background-color: lavender">.col1</div>
		<div class="col-sm-3" style="background-color: orange">.col2</div>
		<div class="col-sm-3" style="background-color: lavender">.col3</div>
		<div class="col-sm-3" style="background-color: orange">.col4</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4" style="background-color: lavender">.col1</div>
		<div class="col-sm-8" style="background-color: orange">.col2</div>
	</div>
	
	<div class="row">
		<div class="col-sm-3 col-md-6" style="background-color: lavender">.col1</div>
		<div class="col-sm-9 col-md-6" style="background-color: orange">.col2</div>
	</div>
	
	<!-- 화면크기에따른 반응성 -->
	<div class="row">
		<div class="col-sm-3 col-md-6 col-lg-4" style="background-color: lavender">.col1</div>
		<div class="col-sm-9 col-md-6 col-lg-8" style="background-color: orange">.col2</div>
	</div>
</div>

</body>
</html>