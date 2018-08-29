<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
 try {
 			String u = request.getParameter("username");
	        String n = request.getParameter("nom");
	        String p = request.getParameter("prenom");
	        String e = request.getParameter("email");
	        String m = request.getParameter("motdepasse");
	        
	        
	        Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/video_game_bdd";
			String user = "root";
			String pwd= "root";
			
			Connection con=DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement("insert into compte values(?,?,?,?,?)");
				
			ps.setString(1, u);
		    ps.setString(2, n);
		    ps.setString(3, p);
		    ps.setString(4, e);
		    ps.setString(5, m);
		            
		    int i = ps.executeUpdate();
		            
		            
		    if(i>0){
		    %>
<jsp:forward page="Home.jsp"></jsp:forward>
<% 
		    }
		    else{
		    	out.print("Ce pseudo est déjà prit" );
		    }
				
 }
 catch(Exception e){e.printStackTrace();
 out.print("Ce pseudo est déjà prit." );
 }

 %>