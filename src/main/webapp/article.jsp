<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Bien- être</title>
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
							class="rounded-circle" height="22" alt="Portrait" loading="lazy" />
					</a>
				</ul>
			</div>

		</div>
		<!-- Container wrapper -->
	</nav>


	<div class="row row-cols-1 row-cols-md-3 g-4">
		<%-- <%
								Integer sz = (Integer) session.getAttribute("s");
								System.out.println(sz);
								List<Object> article = (List<Object>) session.getAttribute("article");
								for (int i = 0; i < sz; i++) {
										out.println(article.get(i));
										//System.out.println(((Post) posts.get(i)).getContent());
							
								%> --%>
		<div class="col">
			<div class="card h-100">
				<img src="./images/1.png"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">La sant&eacute; mentale des
						&eacute;tudiants en temps de Covid-19</h5>
					<p class="card-text">Cet article du magazine L&apos;Express
						aborde les difficult&eacute;s rencontr&eacute;es par les
						&eacute;tudiants pendant la pand&eacute;mie de Covid-19 et leur
						impact sur la sant&eacute; mentale. Il propose &eacute;galement
						des solutions pour aider les &eacute;tudiants &agrave; faire face
						&agrave; ces d&eacute;fis.</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.lexpress.fr/actualite/societe/sante/la-sante-mentale-des-etudiants-en-temps-de-covid-19_2150424.html"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
			<div class="col">
			<div class="card h-100">
				<img src="./images/5.jpg"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">Comment aider un proche atteint de
						d&eacute;pression ?</h5>
					<p class="card-text">Cet article du site Sant&eacute; Magazine
						explique comment aider un proche qui souffre de d&eacute;pression,
						quels comportements adopter et quels mots &eacute;viter. Il offre
						&eacute;galement des conseils pratiques pour accompagner une
						personne atteinte de d&eacute;pression.</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.santemagazine.fr/sante/psychologie/comment-aider-un-proche-atteint-de-depression-173434"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<img src="./images/6.jpeg"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">Les effets du stress sur la
						sant&eacute; mentale</h5>
					<p class="card-text">Cet article du site Doctissimo explore les
						effets du stress sur la sant&eacute; mentale, en expliquant
						comment le stress peut d&eacute;clencher ou aggraver certaines
						pathologies mentales comme l&apos;anxi&eacute;t&eacute;, la
						d&eacute;pression ou les troubles du sommeil. Il offre
						&eacute;galement des conseils pour g&eacute;rer le stress et
						prot&eacute;ger sa sant&eacute; mentale.</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.doctissimo.fr/html/psychologie/stress/articles/15926-effets-stress-sante-mentale.html"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<img src="./images/2.jpg"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">La depression chez les jeunes adultes</h5>
					<p class="card-text">Cet article du site Psychologies.com
						explore les diff&eacute;rentes formes de d&eacute;pression chez
						les jeunes adultes et les raisons pour lesquelles elle peut
						survenir. Il offre &eacute;galement des conseils pour g&eacute;rer
						la d&eacute;pression et se remettre sur la voie de la
						gu&eacute;rison.</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.psychologies.com/Moi/Se-psychanalyser/Developpement-personnel/Articles-et-Dossiers/Les-bienfaits-de-la-meditation-sur-la-sante-mentale"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<img src="./images/3.png"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">LLes bienfaits de la m&eacute;ditation
						sur la sant&eacute; mentale</h5>
					<p class="card-text">Cet article du site Psychologies.com
						d&eacute;crit les bienfaits de la m&eacute;ditation sur la
						sant&eacute; mentale, en expliquant comment cette pratique peut
						r&eacute;duire le stress, l&apos;anxi&eacute;t&eacute; et la
						d&eacute;pression. Il propose &eacute;galement des conseils pour
						d&eacute;buter la m&eacute;ditation et en tirer le meilleur parti.
					</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.psychologies.com/Moi/Se-psychanalyser/Depression/Articles-et-Dossiers/La-depression-chez-les-jeunes-adultes"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card h-100">
				<img src="./images/4.png"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">Le burn-out parental : quand
						l&apos;&eacute;puisement guette les parents</h5>
					<p class="card-text">Cet article du journal Le Monde aborde le
						burn-out parental, une condition dans laquelle les parents sont
						&eacute;puis&eacute;s physiquement et &eacute;motionnellement en
						raison des demandes constantes de leurs enfants. Il examine les
						causes du burn-out parental et propose des strat&eacute;gies pour
						&eacute;viter ou traiter cette condition.</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.lemonde.fr/les-parents-face-au-confinement/article/2021/02/16/le-burn-out-parental-quand-l-epuisement-guette-les-parents_6070115_1868021.html"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
	
		<div class="col">
			<div class="card h-100">
				<img src="./images/7.png"
					class="card-img-top" alt="Hollywood Sign on The Hill" />
				<div class="card-body">
					<h5 class="card-title">Comment lutter contre la solitude ?</h5>
					<p class="card-text">Cet article du site France Culture examine
						les causes et les cons&eacute;quences de la solitude, ainsi que
						les moyens de lutter contre ce ph&eacute;nom&egrave;ne. Il offre
						des conseils pratiques pour sortir de l&apos;isolement et renouer
						des liens sociaux.</p>
				</div>

				<div class="card-body">
					<a
						href="https://www.franceculture.fr/societe/comment-lutter-contre-la-solitude"
						class="card-link">Plus d'infos</a>
				</div>
			</div>
		</div>
		<%-- 			<%} %>
 --%>
	</div>
</body>
</html>