<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Communauté</title>
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
<style type="text/css">
.row {
	align-content: right;
}

@import
	url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap')
	;

h3 {
	margin-top: 2%;
	margin-left: 27%;
	font-family: 'Manrope', sans-serif;
	font-weight: bold
}

.card-comment {
	border: none;
	border-radius: 20px;
	padding: 20px;
	margin-bottom: 40px
}

/* img {
	border-radius: 10px;
	padding-right: 5px;
	width: 60px;
	height: 55px
}
 */
img:hover {
	cursor: pointer
}

.round .align-self-start {
	border-radius: 100%;
	width: 45px;
	height: 40px
}

.media .comment {
	background: #F4F4F4;
	border: none;
	border-radius: 10px
}

h6.user {
	color: #5C5C5C;
	font-size: 15px !important;
	padding-left: 15px !important;
	margin-bottom: 0
}

h6.user:hover {
	cursor: pointer;
	text-decoration: underline
}

p.text {
	margin-bottom: 0;
	color: #8A8A8A !important;
	font-size: 14px
}

.ml-auto {
	margin-right: 10px
}

p .reply {
	color: #5C5C5C;
	font-size: 15px
}

@media screen and (min-width: 576px) {
	.comment {
		width: 470px !important
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
							class="rounded-circle" height="26" alt="Portrait" loading="lazy" />
					</a>
				</ul>
			</div>
		</div>
		<!-- Container wrapper -->
	</nav>

	<!-- create post-->
	<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2"></div>

	<div class="card w-75 mx-auto">
		<div class="card-header  border-success">
			<h5 class="card-title text-success">Exprimez-vous</h5>
		</div>
		<div class="card-body">

			<div class="card-text">
				<form action="./GestionPost" method="POST">
					<div class="form-outline">
						<label class="form-label" for="typeText">Titre du post</label> <input
							type="text" id="typeText" name="name" class="form-control"
							placeholder="Saisi un titre" required />
					</div>
					<div class="form-outline">
						<label class="form-label" for="textAreaExample">Contenu </label>
						<textarea class="form-control" name="content" id="textAreaExample"
							rows="4"
							placeholder="Partagez avec la communité votre expérience."
							required></textarea>
					</div>
					<div class="d-grid gap-2 d-md-flex ">
						<input type="text" name="photo" value="walo" class="form-control"
							hidden /> <input type="text" name="typePost" value="Post"
							class="form-control" hidden />
					</div>
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button class="btn btn-success " type="submit">Publié</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- create post-->


	<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2"></div>
	<hr class="w-75 mx-auto">
	<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2"></div>


	<div class="card w-75 mx-auto">
		<div class="card-header  border-success">
			<h5 class="card-title text-success">De la solitude à la
				communauté : Le partage d'expérience nous connecte en santé mentale"</h5>
		</div>
	</div>


	<!-- Feed des posts-->
	<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2"></div>



	<div class="card w-75 mx-auto">
		<%-- <%
	Integer sz = (Integer) session.getAttribute("size");
	System.out.println(sz);
	List<Object> posts = (List<Object>) session.getAttribute("posts");
	for (int i = 0; i < sz; i++) {
			out.println(posts.get(i));
			//System.out.println(((Post) posts.get(i)).getContent());

	%> --%>
		<div class="card-body">
			<div class="row mb-4">
				<div class="col-2">
					<div class="d-flex justify-content-between p-2 px-3">
						<div class="d-flex flex-row align-items-center">
							<img src="./images/no_user.png" width="50" class="rounded-circle">
						</div>
					</div>
					<h5 class="card-title">Zin SAND</h5>
				</div>
				<div class="col-10">
					<p class="card-text">
						<%-- 	<% System.out.println(i);
					%> --%>
						Je voulais partager mon expérience avec l'anxiété. Cela peut être
						très difficile à vivre, mais j'ai trouvé que la thérapie et la
						méditation m'ont vraiment aidé à gérer mes symptômes. Si vous
						souffrez d'anxiété, n'hésitez pas à chercher de l'aide et à
						essayer différentes méthodes pour trouver celle qui vous convient
						le mieux.
					</p>

				</div>
			</div>
			<hr>
			<div class="icon-bar">
				<a href="#" role="button" class="btn btn-outline-success"><svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-hand-thumbs-up"
						viewBox="0 0 16 16">
  						<path
							d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
				</svg> Like </a> <a href="#" role="button" class="btn btn-outline-success">

					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-chat-left-text"
						viewBox="0 0 16 16">
  					<path
							d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
  					<path
							d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z" />
					</svg> Comment
				</a>
				</div>
			</div>

		</div>
		<!-- Feed des posts-->
		<%-- <%} %> --%>


		<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2"></div>

		<div class="card w-75 mx-auto">

			<div class="card-body">

				<div class="row mb-4">

					<div class="col-2">
						<div class="d-flex justify-content-between p-2 px-3">
							<div class="d-flex flex-row align-items-center">
								<img src="./images/no_user.png" width="50"
									class="rounded-circle">
							</div>
						</div>
						<h5 class="card-title">Bandi Sandi</h5>
					</div>
					<div class="col-10">
						<p class="card-text">Je suis en rétablissement d'un trouble
							alimentaire, et je voulais partager mon expérience pour aider les
							autres qui pourraient être dans une situation similaire. La
							thérapie m'a vraiment aidé à comprendre les causes profondes de
							mes comportements alimentaires et à développer des mécanismes
							d'adaptation sains. Si vous êtes aux prises avec un trouble
							alimentaire, je vous encourage à chercher de l'aide dès que
							possible - cela peut vraiment faire une différence dans votre
							vie.</p>

					</div>
				</div>
				<hr>
				<div class="icon-bar">
					<a href="#" role="button" class="btn btn-outline-success"><svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-hand-thumbs-up"
							viewBox="0 0 16 16">
  						<path
								d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
				</svg> Like </a> <a href="#" role="button" class="btn btn-outline-success">

						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-chat-left-text"
							viewBox="0 0 16 16">
  					<path
								d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
  					<path
								d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z" />
					</svg> Comment
					</a>
				</div>

			</div>
		</div>
		
			<!-- 			comment_section
 -->
		<div class="card w-75 mx-auto">
			<div class="row">
				<div class="col-md-12">
					<div class="card-comment">
						<h5>Commentaires</h5>
						<ul class="list-unstyled">

							<!--SECOND LIST ITEM-->
							<li class="media my-5"><span class="round"> <img
									src="./images/no_user.png"
									class="align-self-start mr-3">
							</span>
								<div class="media-body">
									<div class="row d-flex">
										<h6 class="user">Samar Sahlin</h6>
									</div>
									<p class="text">Oui, je partage avec vous ce point.</p>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	
		
		

<div class="d-grid gap-2 text-center text-lg-start mt-4 pt-2"></div>

<div class="card w-75 mx-auto">

		<div class="card-body">

			<div class="row mb-4">

				<div class="col-2">
					<div class="d-flex justify-content-between p-2 px-3">
						<div class="d-flex flex-row align-items-center">
							<img src="./images/no_user.png" width="50" class="rounded-circle">
						</div>
					</div>
					<h5 class="card-title">Arhaz Zahra</h5>
				</div>
				<div class="col-10">
					<p class="card-text">Je suis atteint de dépression depuis de
						nombreuses années, et j'ai trouvé qu'il était très important de
						construire un réseau de soutien autour de moi. Parler avec des
						amis et de la famille de mes sentiments a été très utile pour moi,
						et je trouve également que l'exercice physique régulier m'aide à
						me sentir mieux. Si vous êtes déprimé, n'oubliez pas que vous
						n'êtes pas seul et qu'il y a de l'aide disponible.</p>

				</div>
			</div>
			<hr>
			<div class="icon-bar">
				<a href="#" role="button" class="btn btn-outline-success"><svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-hand-thumbs-up"
						viewBox="0 0 16 16">
  						<path
							d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
				</svg> Like </a> <a href="#" role="button" class="btn btn-outline-success">

					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-chat-left-text"
						viewBox="0 0 16 16">
  					<path
							d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
  					<path
							d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z" />
					</svg> Comment
				</a>
			</div>
		</div>
	</div>
	<!-- Feed des posts-->

</body>
</html>