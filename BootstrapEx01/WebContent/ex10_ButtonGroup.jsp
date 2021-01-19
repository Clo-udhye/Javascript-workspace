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
	<div class="btn-group btn-group-lg">
		<button type="button" class="btn btn-primary">Samsung</button>
		<button type="button" class="btn btn-primary">Google</button>
		<button type="button" class="btn btn-primary">Apple</button>
	</div>
	<div class="btn-group">
		<button type="button" class="btn btn-primary">Samsung</button>
		<button type="button" class="btn btn-primary">Google</button>
		
		<div class="btn-group">
			<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
				Apple
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">iPad</a>
				<a class="dropdown-item" href="#">iPhone</a>
			</div>
		</div>
	</div>
	<div class="btn-group btn-group-sm">
		<button type="button" class="btn btn-primary">Samsung</button>
		<button type="button" class="btn btn-primary">Google</button>
		
		<div class="btn-group btn-group-sm">
			<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
				Apple
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">iPad</a>
				<a class="dropdown-item" href="#">iPhone</a>
			</div>
		</div>
	</div>
	<br /><br />
	<div class="btn-group-vertical">
		<button type="button" class="btn btn-primary">Apple</button>
		<button type="button" class="btn btn-primary">Samsung</button>
		<button type="button" class="btn btn-primary">Google</button>
	</div>
	
	<div class="btn-group-vertical btn-group-sm">
		<button type="button" class="btn btn-primary">Samsung</button>
		<button type="button" class="btn btn-primary">Google</button>
		
		<div class="btn-group btn-group-sm">
			<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
				Apple
			</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">iPad</a>
				<a class="dropdown-item" href="#">iPhone</a>
			</div>
		</div>
	</div>
</div>

</body>
</html>