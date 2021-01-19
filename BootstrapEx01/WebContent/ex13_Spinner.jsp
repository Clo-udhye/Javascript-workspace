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
	<div class="spinner-border text-primary"></div><br /><br />
	<div class="spinner-grow text-warning"></div><br /><br />
	<div class="spinner-grow text-success spinner-grow-sm"></div><br /><br />
	<button class="btn btn-danger">
		<span class="spinner-border spinner-border-sm"></span>
		Loading..
	</button>
	<br /><br />
	<button class="btn btn-danger" disabled>
		<span class="spinner-border spinner-border-sm"></span>
		Loading..
	</button>
	<br /><br />
	<div class="spinner-border" style="width: 3rem; height: 3rem;" role="status">
  		<span class="visually-hidden">Loading...</span>
	</div>
</div>

</body>
</html>