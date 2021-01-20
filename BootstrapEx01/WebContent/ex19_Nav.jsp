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
	<ul class="nav nav-tabs">
		<li class="nav-item">
    		<a class="nav-link active" data-bs-toggle="tab" href="#home">Home</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link" data-bs-toggle="tab" href="#menu1">Menu 1</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link" data-bs-toggle="tab" href="#menu2">Menu 2</a>
  		</li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<div class="tab-pane container active" id="home">111</div>
		<div class="tab-pane container fade" id="menu1">222</div>
		<div class="tab-pane container fade" id="menu2">333</div>
	</div>
</div>

</body>
</html>