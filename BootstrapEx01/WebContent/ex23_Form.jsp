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
	<form action="/action_page.php">
		<div class="form-check form-switch">
			<input type="checkbox" class="form-check-input" id="switch1" name="example">
      		<label class="form-check-label" for="switch1">Toggle me</label>
    	</div>
    	<br />
    	<button type="submit" class="btn btn-primary">Submit</button>
  	</form>
	
	<form action="/action_page.php">
    	<label for="customRange">Custom range</label>
    	<input type="range" class="form-range" id="customRange" name="points1">
    	<label for="defaultRange">Default range</label>
    	<input type="range" id="defaultRange" name="points2">
    	<p><button type="submit" class="btn btn-primary">Submit</button></p>
  	</form>
	
	<form action="/action_page.php">
    	<p>Default file:</p>
    	<input type="file" id="myFile" name="filename2">
  
    	<div class="mt-3">
      		<button type="submit" class="btn btn-primary">Submit</button>
    	</div>
  </form>

<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
</script>

</div>

</body>
</html>