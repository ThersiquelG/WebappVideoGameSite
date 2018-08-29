<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import= "myPackage.Games" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>


<% ArrayList<Games> cyberPunk = new ArrayList<Games>();
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/video_game_bdd";
	String user = "root";
	String pwd= "root";
	
	
	Connection con=DriverManager.getConnection(url, user, pwd);
	
	Statement st = con.createStatement();
	
	String sql ="SELECT * FROM `infogames`\n"+
			"WHERE `titre` = 'CYBERPUNK 2077';";
	ResultSet result = st.executeQuery(sql);
	
	
	
	
	while(result.next()){
		Games cyber = new Games();
		
		cyber.setTitle(result.getString("titre"));
		cyber.setEditor(result.getString("editeur"));
		cyber.setReleaseYear(result.getInt("daterelease"));
		
		cyberPunk.add(cyber);
		
	
	}
	
 } catch(SQLException e) {
	 e.printStackTrace();
	 
 } %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test CYBERPUNK 2077.</title>
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
	
	<center><img alt="cyberpunk" src="image/cyberpunkthumbnail.jpg" width="350" height="200"></center>
	
	<HR>

	<% 
	out.println("<ul>");
	for(int i = 0; i<cyberPunk.size(); i++){
		out.println("<li>");
		out.print(cyberPunk.get(i).getTitle());
		out.print(cyberPunk.get(i).getEditor());
		out.print(cyberPunk.get(i).getReleaseYear());
		out.print("</li>");
		out.println("<br />");
	}
	out.println("</ul>");
%>

<p>Jeu de rôle dystopique et futuriste en open-world, Cyberpunk 2077 pour PC est basé sur le RPG papier du même nom. 
Dans un futur pas si lointain, la technologie a évolué au point de devenir un don à double tranchant pour l'humanité...</p>

<HR>
<HR>

</body>
</html>