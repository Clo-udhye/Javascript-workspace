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
	<form class="row row-cols-lg-auto g-3 align-items-center" action="/action_page.php">
		<div class="col-12">
			<input type="email" class="form-control" placeholder="Enter email" id="email" />
		</div>
		<div class="col-12">
			<input type="password" class="form-control" placeholder="Enter password" id="pwd" />
		</div>
		<div class="col-12">
			<div class="form-check">
			<label class="form-check-label">
				<input class="form-check-input" type="checkbox"/>Remember me
			</label>
			</div>
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</form>
	
	<form action="/action_page.php" class="was-validated">
		<div class="form-group">
			<label for="uname">Username: </label>
			<input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
			<div class="valid-feedback">Valid</div>
			<div class="invalid-feedback">Please fill out this field</div>
		</div>
		<div class="form-group">
			<label for="pwd">Password: </label>
			<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
			<div class="valid-feedback">Valid</div>
			<div class="invalid-feedback">Please fill out this field</div>
		</div>
		<div class="form-group form-check">
			<label class="form-check-label">
				<input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Check this checkbox to continue.</div>
      		</label>
    	</div>
    	<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>

</body>
</html>