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
<script>
	$(document).ready(function(){
		$('[data-bs-toggle="tooltip"]').tooltip();
	});
</script>
</head>
<body>
<div class="container-fluid">
	<a href="#" data-bs-toggle="tooltip" title="Hooray!">Hover over me</a>
	<br /><br />
	<a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Hooray!">Top</a>
	<a href="#" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Hooray!">Bottom</a>
	<a href="#" data-bs-toggle="tooltip" data-bs-placement="left" title="Hooray!">Left</a>
	<a href="#" data-bs-toggle="tooltip" data-bs-placement="right" title="Hooray!">Right</a>
</div>
</body>
</html>