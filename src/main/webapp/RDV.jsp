<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
	<%@page import="java.util.List"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Traitement</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Bootstrap JavaScript library -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




</head>
<body>

	<!-- Navbar-->

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!-- Container wrapper -->
		<div class="container-fluid">

			<!-- Navbar brand -->
			<a class="navbar-brand me-2" href="index.html"> <img
				src="./images/logo1.png" height="50" alt="Bloom Logo" loading="lazy"
				style="margin-top: -1px;" />
			</a>

			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarCenteredExample"
				aria-controls="navbarCenteredExample" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse justify-content-center"
				id="navbarCenteredExample">
				<!-- Left links -->
				<ul class="navbar-nav mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.jsp">Accueil</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="post.jsp">Communaut&eacute </a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="article.jsp">Bien-&ecirctre</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="RDV.jsp">Traitement</a></li>
				</ul>


			</div>
			<!-- Collapsible wrapper -->
			<!-- Left links -->

			<div class="d-flex ">
				<ul class="navbar-nav">
					<!-- Avatar -->
					<%
					out.print(session.getAttribute("nomuser"));
					%>
					<li class="nav-item dropdown"><a
						class="nav-link d-flex align-items-center" href="profile.jsp"
						role="button"> <img src="./images/no_user.png"
							class="rounded-circle" height="22" alt="Portrait" loading="lazy" />
					</a>
				</ul>
			</div>
		</div>
		<!-- Container wrapper -->
	</nav>



	<div class="container">
		<div class="row">


			<div class="col-md-12">
				<h4></h4>
				<h4 class="text-success">Liste de spécialistes en santé mentale</h4>
				<hr>
				<div class="table-responsive-md">

					<table id="mytable" class="table table-bordred table-striped">

						<thead>

							<th>Nom</th>
							<th>Email</th>
							<th>Adresse</th>
							<th>Specialité</th>
							<th>Contact</th>
							<th>RDV</th>

						</thead>
						<tbody>
							<%-- <%
								Integer sz = (Integer) session.getAttribute("l");
								System.out.println(sz);
								List<Object> sp = (List<Object>) session.getAttribute("psy");
								for (int i = 0; i < sz; i++) {
										out.println(sp.get(i));
										//System.out.println(((Post) posts.get(i)).getContent());
							
								%> --%>
							<tr>
								<td>Bundi Suni</td>
								<td>bandi@gmail.com</td>
								<td> N556 rue Risalin  centre Terawdil Rabat MarocCB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
								<td>Psychiatre</td>
								<td>0675644534</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="RDV">

										<button type="button" class="btn btn-success"
											data-bs-toggle="modal" data-bs-target="#RDV">
											Choisir</button>
									</p></td>

							</tr>
							<tr>
								<td>Rachida Tajj</td>
								<td>rachida.tajj@gmail.com</td>
								<td> rue 234 Agdal Rabat Maroc</td>
								<td>Psychologue</td>
								<td>0765456656</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="RDV">

										<button type="button" class="btn btn-success"
											data-bs-toggle="modal" data-bs-target="#RDV">
											Choisir</button>
									</p></td>

							</tr>
							<tr>
								<td>Sami Safir</td>
								<td>sami.safir@gmail.com</td>
								<td> rue Nidal Lot Sendil rabat Rabat Maroc</td>
								<td>Psychothérapeute</td>
								<td>0767561212</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="RDV">

										<button type="button" class="btn btn-success"
											data-bs-toggle="modal" data-bs-target="#RDV">
											Choisir</button>
									</p></td>

							</tr>
							<tr>
								<td>Manal Moipe</td>
								<td>manal.moipe@gmail.com</td>
								<td>N901 Imb 4 rue Salam Agdal Rabat Maroc</td>
								<td>Psychologue</td>
								<td>0645634212</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="RDV">

										<button type="button" class="btn btn-success"
											data-bs-toggle="modal" data-bs-target="#RDV">
											Choisir</button>
									</p></td>
							</tr>
<%-- <%} %>
 --%>						</tbody>

					</table>

					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item disabled"><a class="page-link">Precedent</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Suivant</a>
							</li>
						</ul>
					</nav>

				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="RDV" tabindex="-1" aria-labelledby="RDV"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel">Prendre
							un rendez-vous</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form action="./GestionRDV" method="POST">
						<div class="modal-body">
							<div class="mb-3">
								<label class="form-label">Degré de gravité</label> <select
									class="form-select" name="gravite">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4(Degré élevé)</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Date du RDV</label> <input
									class="form-control" type="date" name="dateRDV">
							</div>

							<div class="mb-3">
								<label class="form-label">Lieu du RDV</label> <select
									class="form-select" name="lieu">
									<option selected>Choisissez votre choix du RDV</option>
									<option value="personne">En personne</option>
									<option value="ligne">En ligne</option>
								</select>
							</div>
							<input class="form-control" type="text" value="id_user"
								name="dateRDV" hidden> <input class="form-control"
								type="text" value="id_specialiste" name="dateRDV" hidden>
						</div>
						<div class="modal-footer">
							<button type="annuler" class="btn btn-secondary"
								data-bs-dismiss="modal">Annuler</button>
							<button type="submit" type="submit" class="btn btn-success">Enregistrer
								RDV</button>
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>