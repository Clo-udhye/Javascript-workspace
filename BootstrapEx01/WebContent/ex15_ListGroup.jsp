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

<div class="container-fluid">
	<ul class="list-group" style="width:30%;">
		<li class="list-group-item active d-flex justify-content-between align-items-center">
			InBox
			<span class="badge bg-info rounded-pill">12</span>
		</li>
		<li class="list-group-item disabled d-flex justify-content-between align-items-center">
			Ads
			<span class="badge bg-info rounded-pill">50</span>
		</li>
		<li class="list-group-item d-flex justify-content-between align-items-center">
			Junk
			<span class="badge bg-info rounded-pill">99</span>
		</li>
	</ul>
	<br /><br />
	<ul class="list-group list-group-flush" style="width:30%;">
		<li class="list-group-item list-group-item-action list-group-item-primary">
			InBox
		</li>
		<li class="list-group-item list-group-item-action list-group-item-secondary">
			Ads
		</li>
		<li class="list-group-item list-group-item-action list-group-item-danger">
			Junk
		</li>
	</ul>
</div>

</body>
</html>