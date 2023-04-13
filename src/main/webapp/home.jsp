<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenue dans Bloom</title>
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
.bg-image {
  background-image: url('./images/web.jpg');
  background-position: center left;
  background-repeat: no-repeat;
  height: 100vh;
}

.container-para {
  text-align: right,left;
  color: black;
  font-family: Arial, sans-serif;
  padding-top: 100px;
  position: absolute;
  right: 45px;
  width: 700px;
  height: 120px;
}

.container-para h1 {
  font-size: 48px;
  font-weight: bold;
  margin-bottom: 20px;
}

.container-para p {
  font-size: 24px;
  line-height: 1.5;
  margin-bottom: 40px;
  align-content: center;
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
						aria-current="page" href="home.jsp">Accueil</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="post.jsp">Communaut&eacute </a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="article.jsp">Bien- &ecirctre</a></li>
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


	<!-- Background image -->
	<div class="bg-image"
		style="background-image: url('./images/Home.png'); background-position: center; height: 100vh">
	</div>
	<!-- Background image -->
</body>
</html>