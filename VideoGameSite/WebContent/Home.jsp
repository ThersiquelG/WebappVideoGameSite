<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>

	<%
		/*include logo*/
	%>


	<h2>JeuxVidéos.fr</h2>

	<marquee dir="ltr">
		<font style="color: Black;">Il est temps d'abandonner Jeuxvidéo.com et Kotaku ...</font>
	</marquee>

	<HR>
	<div id="nav">
		<ul>
			<li><a href=Home.jsp>Home</a></li>
			<li><a href=News.jsp>News</a></li>
			<li><a href=Tests.jsp>Tests</a></li>
			<li><a href=Contact.jsp>Nous Contacter</a></li>
			<li><a href="Inscription.jsp">S'incrire</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<HR>
	<h3 id="newsHeaderHome">Les derniers tests de l'année.</h3>
	
	<ul id="nav-tests">
	<li><p><strong>Monster Hunter: World:</strong><em> LE jeu de l'été.</em></p>
	<a href=mhworldTest.jsp><img alt="mhw" src="image/mhthumbnail.jpg" width="350" height="200"></a></li>
	<li><p><strong>CYBERPUNK 2077:</strong><em> La pépite de CDPROJEKT</em></p>
	<img alt="cyberpunk" src="image/cyberpunkthumbnail.jpg" width="350" height="200"></li>
	<li><p><strong>Battle for Azeroth:</strong><em> La dernière extension de WoW ?</em></p>
	<img alt="bfa" src="image/bfa.jpg" width="350" height="200"></li>
	<li><p><strong>Street Fighter V :</strong><em> Les hitboxes toujours autant mal foutues.</em></p>
	<img alt="sfv" src="image/sfVthumbnail.jpg" width="350" height="200"></li>
	</ul>
	
	<HR>
	
	
	<h3 id="newsHeaderHome">Les dernières news de l'année.</h3>
	
	<ul id="nav-news">
	<li><p><strong>Le sac à dos Razer :</strong><em>Arnaque ou utile?</em></p>
	<img alt="razerbp" src="image/razerbackpack.jpg" width="350" height="200"></li>
	<li><p><strong>Le nouveau boitier NZXT :</strong><em>Pourquoi l'acheter.</em></p>
	<img alt="nztcase" src="image/nztcase.png" width="350" height="200"></li>
	<li><p><strong>La nouvelle game des proccésseurs de Ryzen :</strong><em>Un nouveau souffle pour le deuxième géant de l'hardware.</em></p>
	<img alt="rproc" src="image/ryzenprocessor.jpg" width="350" height="200"></li>
	<li><p><strong>NVIDIA PRESENTE SES NOUVELLES CARTES GRAPHIQUES A PRIX KC</strong></p>
	<img alt="rtx" src="image/nvidiartx.jpg" width="350" height="200"></li>
	</ul>

	<HR>
	
	

	

</body>
</html>