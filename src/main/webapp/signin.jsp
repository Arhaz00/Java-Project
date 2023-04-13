<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
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

.h-custom {
	height: calc(100% - 73px);
}

@media ( max-width : 450px) {
	.h-custom {
		height: 100%;
	}
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
						aria-current="page" href="#">Communaut&eacute </a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Bien- &ecirctre</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Traitement</a></li>
				</ul>


			</div>
			<!-- Collapsible wrapper -->
			<!-- Left links -->

			<div class="d-flex ">
				<a type="button" class="btn btn-link-success px-3 me-2" href="login.jsp">
					Connexion </a> <a type="button" class="btn btn-success me-3"
					href="signin.jsp"> Inscription </a>

			</div>
		</div>
		<!-- Container wrapper -->
	</nav>



	<!-- form connexion -->

	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<form action="./Register" method="POST">
						
						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0">S'inscrire</p>
						</div>

						<!-- name input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">Nom complet</label>
							<input type="text" class="form-control"
								placeholder="Votre nom complet" name="nom" />
						</div>

						<!-- Birthday input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">Date de
								naissance</label> <input type="date" class="form-control " name="date" />
						</div>

						<!-- Phone input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">Numero de
								t&eacutel&eacutephone</label> <input type="tel" class="form-control " name="phone" />
						</div>

						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">Email
								address</label> <input type="email" class="form-control "
								placeholder="exemple@gmail.com" name="email" />
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="form3Example3">Mot de
								passe</label> <input type="password" class="form-control "
								placeholder="***********" name="password" />
						</div>

						<div class="form-check">
							<input class="form-check-input" type="checkbox" name="psyc"
								id="psyc" value="1"> 
								<label class="form-check-label"
								for="psyc">Je suis un spécialiste dans le domaine de la
								santé mentale.</label>
						</div>


						<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg "
								style="padding-left: 2.5rem; padding-right: 2.5rem;">S'inscrire</button>
							<p class="small fw-bold mt-2 pt-1 mb-0">
								As-tu d ja un compte? <a href="login.jsp" class="link-success">Se
									connecter</a>
							</p>
						</div>
						<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2">
							
						</div>
					</form>
				</div>
			</div>
		</div>

	

	</section>


</body>
</html>