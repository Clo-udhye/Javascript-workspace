<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
	body { font-size : 80% };	
	
    label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 350px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		let i = 0;
		
		$('#dialog-form').dialog({
			autoOpen : false,
			modal : true,
			width : 350,
			height : 300,
			buttons : {
				'취소' : function(){
					$(this).dialog('close');
				},
				'추가' : function(){
					let html = '<tr index="'+ i +'">'; 
					html += '<td>' + $('#name').val() + '</td>';
					html += '<td >' + $('#email').val() + '</td>';
					html += '<td>' + $('#password').val() + '</td>';
					html += '<td>';
					html += '	<button class="btn" index="'+ i +'">삭제</button>'
					html += '</td>';
					html += '</tr>';
					
					$('#users tbody').append(html);
					
					// 동적 태그에 이벤트 부착2
					$('button[index="'+ i +'"]').button().on('click', function(){
						//alert($(this).attr('index'));
						$('tr[index="'+ $(this).attr('index') +'"]').remove();
					});
					
					i++;
					
					$(this).dialog('close');
				}		
			}
		});
		
		$('#create-user').button().on('click', function(){
			$('#dialog-form').dialog('open');
		});
		
		/*// 동적 태그에 이벤트 부착1
		$(document).on("click",".btn", function(){
			//alert($(this).attr('index'));
			$('.btn').button();
			$('tr[index="'+ $(this).attr('index') +'"]').remove();
		});
		*/
	});
</script>
</head>
<body>
<div id="users-contain" class="ui-widget">
  <h1>Existing Users:</h1>
  <table id="users" class="ui-widget ui-widget-content">
    <thead>
      <tr class="ui-widget-header ">
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
</div>
<button id="create-user">Create new user</button>

<div id="dialog-form" title="Create new user">
  <p class="validateTips">All form fields are required.</p>
 
  <form>
    <fieldset>
      <label for="name">Name</label>
      <input type="text" name="name" id="name" value="Jane Smith" class="text ui-widget-content ui-corner-all">
      <label for="email">Email</label>
      <input type="text" name="email" id="email" value="jane@smith.com" class="text ui-widget-content ui-corner-all">
      <label for="password">Password</label>
      <input type="password" name="password" id="password" value="xxxxxxx" class="text ui-widget-content ui-corner-all">
 
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
</body>
</html>