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
	<div class="progress" style="height: 1px;">
		<div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
	</div>
	<br />
	<div class="progress">
	  <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">75%</div>
	</div>
	<br />
	<div class="progress">
		<div class="progress-bar progress-bar-striped progress-bar-animated" style="width:40%"></div>
	</div>
	<br />
	<div class="progress">
  		<div class="progress-bar bg-success" style="width:40%">
    		Free Space
  		</div>
  		<div class="progress-bar bg-warning" style="width:10%">
    		Warning
  		</div>
  		<div class="progress-bar bg-danger" style="width:20%">
    		Danger
  		</div>
	</div>
</div>

</body>
</html>