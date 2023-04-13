<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>


<style>
.gradient-custom-2 {
	/* fallback for old browsers */
	background: #fbc2eb;
	/* Chrome 10-25, Safari 5.1-6 */ /* rgba(245, 243, 224, 0.8) 
	(to right, rgba(188, 235, 200, 0.8),
		rgba(253, 252, 246, 0.8));
	*/
	background: -webkit-linear-gradient(to right, rgba(253, 252, 246, 0.8),
		rgba(253, 252, 246, 0.8));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(253, 252, 246, 0.8),
		rgba(253, 252, 246, 0.8))
}
</style>
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

			<div class="d-flex">
				<a class="nav-link d-flex align-items-center" href="profile.jsp"
					role="button"> <%
 out.print(session.getAttribute("nomuser"));
 %>
				</a>
				<form action="./Login" method="GET">
					<input type="text" name="logout" value="true" hidden />
					<button class="nav-link d-flex align-items-center btn btn-dark"
						type="submit">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-box-arrow-right"
							viewBox="0 0 16 16">
                <path fill-rule="evenodd"
								d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z" />
                <path fill-rule="evenodd"
								d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
            </svg>
					</button>
				</form>
			</div>

		</div>
		</div>
		<!-- Container wrapper -->
	</nav>


	<section class="h-100 gradient-custom-2">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-lg-9 col-xl-7">
					<div class="card">
						<div class="rounded-top text-white d-flex flex-row"
							style="background-color: #255339; height: 200px;">
							<div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
								<img src="./images/no_user.png" alt="Generic placeholder image"
									class="img-fluid img-thumbnail mt-4 mb-2"
									style="width: 150px; z-index: 1">
								<!-- <button type="button" class="btn btn-outline-dark"
									data-mdb-ripple-color="dark" style="z-index: 1;">Edit
									profile</button> -->
							</div>
							<div class="ms-3" style="margin-top: 130px;">
								<h5>
									<%
									out.print(session.getAttribute("nomuser"));
									%>
								</h5>

							</div>
						</div>
						<div class="p-4 text-black" style="background-color: #f8f9fa;">
							<div class="d-flex justify-content-start  py-1">
								<div>
									<p class="font-italic mb-1">
										Email:
										<%
									out.print(session.getAttribute("usermail"));
									%>
									</p>
									<p class="font-italic mb-1">
										Numero de telephone:
										<%
									out.print(session.getAttribute("usertel"));
									%>
									</p>
								</div>

							</div>
						</div>
						<div
							class="d-flex justify-content-between align-items-center mb-4">
							<p class="lead fw-normal mb-0">Post recents</p>
						</div>
						<%

						%>

						<div class="row g-2">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Partage d'experience</h5>
									<p class="card-text">Je voulais partager mon expérience
										avec l'anxiété. Cela peut être très difficile à vivre, mais
										j'ai trouvé que la thérapie et la méditation m'ont vraiment
										aidé à gérer mes symptômes. Si vous souffrez d'anxiété,
										n'hésitez pas à chercher de l'aide et à essayer différentes
										méthodes pour trouver celle qui vous convient le mieux.
								</div>
								<div class="card-footer text-muted">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-clock-history"
										viewBox="0 0 16 16">
  <path
											d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z" />
  <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z" />
  <path
											d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z" />
</svg>
									Moins d'une heure
								</div>
							</div>
						</div>
						<hr>
						<div class="card-body p-4 text-black">
							<div class="mb-5">
								<p class="lead fw-normal mb-1">Vos rendez-vous</p>
								<div class="card border-success">
									<div class="card-body">Vous avez un RDV avec <b>Sami Safir</b>
										 en personne à la date: 19-04-2023.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



</body>
</html>