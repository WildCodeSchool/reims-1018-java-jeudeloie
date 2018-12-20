<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
<title>Calendrier Saint Ex</title>
</head>
	<body>
	<header>
		<h1>Hello Saint Ex !</h1>
	</header>
	<main>
		<div class="container">
			
			<div class="row">
				<div class="col-12">
					<div class="my-grid">
						<% int currentCase = (int) request.getAttribute("position"); %>
						<% for(int i = 1; i <= 31; i++) { %>
							<% if(i == currentCase) { %>
				      			<div class="item<%= i %> current"><%= i %></div>
							<% } else { %>
				      			<div class="item<%= i %>"><%= i %></div>
							<% } %>
						<% } %>
					</div>
				</div>
			</div>
	</div>

		<form action="" method="post" class="dice">
			<p><%= request.getAttribute("diceRoll") %></p>
			<input type="hidden" name="position" value="<%= currentCase %>">
			<button type="submit">Lancer le dé</button>
		</form>
	</main>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>