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
		<h1>Jeu de l'oie du mois</h1>
		<h2>Janvier 2019</h2>
	</header>
	<main>
		<div class="container">
			
			<div class="row">
				<div class="col-12">
					<div class="my-grid">
						<% int currentCase = (int) request.getAttribute("position"); %>
						<% for(int i = 1; i <= 31; i++) { %>
							<% String classes = "item item" + i; %>
							<% String extraData = ""; %>
							<% if(currentCase == 0) { %>
								<% extraData = " data-toggle=\"modal\" data-target=\"#exampleModal" + i + "\""; %>
							<% } %>
							<% if(currentCase == i) { %>
				      			<% classes += " current"; %>
							<% } %>
			      			<div class="<%= classes %>"<%= extraData %>><%= i %></div>
							<div class="modal fade" id="exampleModal<%= i %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							        <%= i %>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							        <button type="button" class="btn btn-primary">Save changes</button>
							      </div>
							    </div>
							  </div>
							</div>
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
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		  Launch demo modal
		</button>
	</main>
	<footer class="container">
        <div class="row logos">
        	<div class="col-1 logo"><a target="_blank" href="https://wildcodeschool.fr/"><img src="data:image/png;base64,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" alt="logo wild"/></a></div>
  			<div class="col-1 logo"><a target="_blank" href="https://wildcodeschool.fr/"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu5cpbIFVtTg3CPEL8CTPSaUMyyA8ud-STY3PqnIJebjwGumfq" alt="logo facebook"/></a></div>
 			<div class="col-1 logo"><a target="_blank" href="https://www.instagram.com/saintexreims/"><img src="http://www.droid-life.com/wp-content/uploads/2016/05/new-instagram-icon22.jpg" alt="instagram logo original"/></a></div>
  			<div class="col-1 logo"><a target="_blank" href="https://www.flickr.com/photos/ccsaintexreims/page1"><img src="https://www.freeiconspng.com/uploads/flickr-logo-png-2.png"alt="logo flickr"/></a></div>
  		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<% if(currentCase != 0) { %>
	<script type="text/javascript">
	    $(window).on('load',function(){
	        $('#exampleModal<%= currentCase %>').modal('show');
	    });
	</script>
<% } %>
	</body>
</html>