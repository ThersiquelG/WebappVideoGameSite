<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try {
		String pseudo= request.getParameter("username");
		String message= request.getParameter("message");
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/video_game_bdd";
		String user = "root";
		String pwd= "root";
		
		Connection con=DriverManager.getConnection(url, user, pwd);
		
		PreparedStatement ps=con.prepareStatement("insert into commentaires values(?,?)");
		ps.setString(1,pseudo);
		ps.setString(2,message);
		
		int s= ps.executeUpdate();
		if(s>0){
			
		%>
<jsp:forward page="Contact.jsp"></jsp:forward>

<% 
		}
		else{
		out.print("Ce compte n'exsite pas.");
		}
}
catch(Exception e){e.printStackTrace();
out.print("Ce compte n'existe pas." );
}

%>
