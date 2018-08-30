<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="myPackage.Games"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<% ArrayList <Games> bfaArray = new ArrayList <Games>();
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/video_game_bdd";
	String user = "root";
	String pwd= "root";
	
	
	Connection con=DriverManager.getConnection(url, user, pwd);
	
	Statement st = con.createStatement();
	
	String sql ="SELECT * FROM `infogames`\n"+
			"WHERE `titre` LIKE '%Battle%';";
	ResultSet result = st.executeQuery(sql);
	
	
	
	
	while(result.next()){
		Games bfa = new Games();
		
		bfa.setTitle(result.getString("titre"));
		bfa.setEditor(result.getString("editeur"));
		bfa.setReleaseYear(result.getInt("daterelease"));
		
		bfaArray.add(bfa);
		
	
	}
	
 } catch(SQLException e) {
	 e.printStackTrace();
	 
 }%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Battle for Azeroth</title>
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
	
	<center><img alt="bfa" src="image/bfa.jpg" width="350" height="200"></center>
	
	<HR>

	<% 
	out.println("<ul>"); 
	for(int i = 0; i<bfaArray.size(); i++){
		out.println("<li>");
		out.print(bfaArray.get(i).getTitle());
		out.print(bfaArray.get(i).getEditor());
		out.print(bfaArray.get(i).getReleaseYear());
		out.print("</li>");
		out.println("<br />");
	}
	out.println("</ul>");
%>

<p>World of Warcraft : Battle for Azeroth est la 7ème extension de World of Warcraft sur PC. 
Il est basé sur le conflit qui oppose la Horde et l'Alliance sur Azeroth. Elle apporte en plus 6 nouvelles races et de nouveaux lieux à visiter.</p>

<HR>


</body>
</html>