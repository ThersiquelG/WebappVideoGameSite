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
	
	String sql ="SELECT * FROM livre;";
	ResultSet result = st.executeQuery(sql);
	
	
	
	
	while(result.next()){
		Auteurs parAuteurs = new Auteurs();
		
		parAuteurs.setTitre(result.getString("Titre"));
		parAuteurs.setAuteur(result.getString("auteur"));
		parAuteurs.setGenre(result.getString("genre"));
		
		listParAuteurs.add(parAuteurs);
	
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

</body>
</html>