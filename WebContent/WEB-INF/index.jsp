<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
<title>Jeu de l'Oie Saint Ex</title>
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
							<% String classes = "item item" + i; %>
							<% if(i == currentCase) { %>
				      			<% classes += " current"; %>
							<% } %>
			      			<div class="<%= classes %>"><%= i %></div>
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
		<form action=""method="post" class="info">
			<p><%if (currentCase==1 ||currentCase==2||currentCase==3||currentCase==4 ) {%>
			<button type="submit"><a href="#openModal">Clique pour voir ce qu'il se passe</a>
			<div id="openModal" class="modalDialog">
			<div>
				<a href="#close" title="Close" class="close">X</a>
				<h2>Date</h2>
				<p>Il se passe plein de choses</p>
				<p>Viens les découvrir !! </p>
			</div>
			</div>
			</button>
			
			<% } %></p>
			<p><% if (currentCase==7||currentCase==8||currentCase==9){ %>
			<button type="submit"><a href="#openModal">On est fermé</a>
			<div id="openModal" class="modalDialog">
			<div>
				<a href="#close" title="Close" class="close">X</a>
				<h2>On se repose</h2>
				<p>Reviens une prochaine fois.</p>
				<p>Relance le dé</p>
			</div>
			</div></button><%} %>
			

			
			</p>
		</form>
		
	</main>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>