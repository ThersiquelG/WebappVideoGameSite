<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import= "myPackage.Games" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>


<% ArrayList<Games> monsterHunter = new ArrayList<Games>();
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/video_game_bdd";
	String user = "root";
	String pwd= "root";
	
	
	Connection con=DriverManager.getConnection(url, user, pwd);
	
	Statement st = con.createStatement();
	
	String sql ="SELECT * FROM `infogames`\n"+
			"WHERE `titre` = 'Monster Hunter World';";
	ResultSet result = st.executeQuery(sql);
	
	
	
	
	while(result.next()){
		Games mhw = new Games();
		
		mhw.setTitle(result.getString("titre"));
		mhw.setEditor(result.getString("editeur"));
		mhw.setReleaseYear(result.getInt("daterelease"));
		
		monsterHunter.add(mhw);
		
	
	}
	
 } catch(SQLException e) {
	 e.printStackTrace();
	 
 } %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Monster Hunter World</title>
</head>
<body>

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
	
	<center><img alt="mhw" src="image/mhthumbnail.jpg" width="350" height="200"></center>
	
	<HR>

	<% 
	out.println("<ul>");
	for(int i = 0; i<monsterHunter.size(); i++){
		out.println("<li>");
		out.print(monsterHunter.get(i).getTitle());
		out.print(monsterHunter.get(i).getEditor());
		out.print(monsterHunter.get(i).getReleaseYear());
		out.print("</li>");
		out.println("<br />");
	}
	out.println("</ul>");
%>

<p>La dernière entrée de la série Monster Hunter. 
Plus complet que jamais, le jeu transporte le joueur au travers de batailles contre de terribles monstres et de magnifiques paysages. 
Récupérerez des objets sur vos ennemis, créez de nouveaux équipements et armures, explorez tous les territoires disponibles. 
Saurez vous devenir le chasseur ultime ?</p>

<HR>
<HR>

</body>
</html>