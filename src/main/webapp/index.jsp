<!DOCTYPE html>
<html>
<head>
<script src="scripts/jquery-2.1.3.js"></script>
<script>
	/* window.onload = function() {
		alert("Wel come");
	}; */

	$(document).ready(
			function() {
				$.get("rest/user", function(data) {
					var rowTemplate = $("#templates table").html();
					console.log(rowTemplate);
					for (index in data) {
						var row = rowTemplate.replace("name",
								data[index].name).replace("id",
								data[index].id).replace("age",
								data[index].age);
						$("#flights").append(row);
					}
				});
			});
</script>

</head>
<body>
	<h2>Hello World!</h2>
	<div id="templates" style="display: none;">
		<table>
			<tr>
				<td>name</td>
				<td>id</td>
				<td>age</td>
			</tr>
		</table>
	</div>
	<table id="flights">
		<tr>
			<td>name</td>
			<td>id</td>
			<td>age</td>
		</tr>
	</table>

</body>
</html>
