<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page d'inscription</title>
</head>
<body>



	<h2>JeuxVidéos.fr</h2>

	<marquee dir="ltr">
		<font style="color: Black;">Il est temps d'abandonner
			Jeuxvidéo.com et Kotaku ...</font>
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

	<form action="InscriptionSave.jsp">

		<table>
			<tr>
				<td>Pseudo:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Nom:</td>
				<td><input type="text" name="nom"></td>
			</tr>
			<tr>
				<td>Prénom:</td>
				<td><input type="text" name="prenom"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Mot de passe:</td>
				<td><input type="password" name="motdepasse"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>

	</form>




</body>
</html>