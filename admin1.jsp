<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String username=request.getParameter("username");

String password=request.getParameter("password");


	try{
			
	    Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select * from admin where username='"+username+"' && password='"+password+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		
		
		response.sendRedirect("adminpage.jsp");
	
		
		}
		else
		{
	             response.sendRedirect("admin.jsp?faild");

		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
%>





























