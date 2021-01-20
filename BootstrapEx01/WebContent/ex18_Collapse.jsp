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
	<button class="btn btn-primary" data-bs-toggle="collapse" data-bs-target="#demo">Collapsible</button>
	<div id="demo" class="collapse">
		내용1<br />
		내용1<br />
		내용1<br />
		내용1<br />
	</div>
	
	<br /><br />
	
	<div id="accordion">
		<div class="card">
			<div class="card-header">
				<a class="card-link" data-bs-toggle="collapse" href="#collapseOne" >
					Collapse Group Item #1
				</a>
			</div>
			<div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
				<div class="card-body">
				11111
				</div>
			</div>
		</div>
		
		<div class="card">
			<div class="card-header">
				<a class="card-link" data-bs-toggle="collapse" href="#collapseTwo">
					Collapse Group Item #2
				</a>
			</div>
			<div id="collapseTwo" class="collapse show" data-bs-parent="#accordion">
				<div class="card-body">
				22222
				</div>
			</div>
		</div>
		
		<div class="card">
			<div class="card-header">
				<a class="card-link" data-bs-toggle="collapse" href="#collapseThree">
					Collapse Group Item #3
				</a>
			</div>
			<div id="collapseThree" class="collapse show" data-bs-parent="#accordion">
				<div class="card-body">
				33333
				</div>
			</div>
		</div>
	</div>
	
	<p>
	<button class="btn btn-info" type="button" data-bs-toggle="collapse" data-bs-target="#multi1">Toggle Right</button>
	<button class="btn btn-info" type="button" data-bs-toggle="collapse" data-bs-target="#multi2">Toggle Left</button>
	<button class="btn btn-info" type="button" data-bs-toggle="collapse" data-bs-target=".multi">Toggle Both</button>
	</p>
	
	<div class="row">
  		<div class="col">
    		<div class="collapse multi" id="multi1">
	      		<div class="card card-body">
	        		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
	      		</div>
    		</div>
  		</div>
		<div class="col">
			<div class="collapse multi" id="multi2">
				<div class="card card-body">
					Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
		      	</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>