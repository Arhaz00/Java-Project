<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<style>
.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
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
				src="./images/logo1.png"
				height="50" alt="Bloom Logo" loading="lazy" style="margin-top: -1px;" />
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
						aria-current="page" href="#">Accueil</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Communaut </a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Bien- tre</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Traitement</a></li>
				</ul>


			</div>
			<!-- Collapsible wrapper -->
			<!-- Left links -->

			<div class="d-flex ">
				<a type="button" class="btn btn-link-success px-3 me-2" href="login.jsp">
					Connexion </a> 
				<a type="button" class="btn btn-success me-3"
					href="signin.jsp"> Inscription </a>

			</div>
		</div>
		<!-- Container wrapper -->
	</nav>



	<section class="vh-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex align-items-center justify-content-center h-100">
				<div class="col-md-8 col-lg-7 col-xl-6">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
						class="img-fluid" alt="Phone image">
				</div>
				<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
					<form action="./Login" method="POST">
						<%-- 
 --%>
						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0 text-muted">Connectez-vous</p>
						</div>

						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">
								Adresse Email</label> <input type="email" name="email" class="form-control "
								placeholder="exemple@gmail.com" />
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">Mot de
								passe</label> <input type="password" name="password" class="form-control "
								placeholder="***********" />
						</div>

						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="form1Example3" checked /> <label class="form-check-label"
								for="form1Example3"> Souvenir de moi </label>
						</div>

						<!-- Submit button -->
						<div class="d-grid gap-2">
							<button type="submit" class="btn btn-primary btn-lg btn-block">Se
								connecter</button>
						</div>
						<a href="#!">Mot de passe oubli ?</a>

					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>l>