<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String username=request.getParameter("username");
session.setAttribute("appuser",username);
String password=request.getParameter("password");


	try{
			
	    Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select * from reg where username='"+username+"' && password='"+password+"'|| email='"+username+"' && password='"+password+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		
		
		response.sendRedirect("userpage.jsp");
		session.setAttribute("username",username);
		//System.out.println(username);
		

		//System.out.println(GroupName);
		
		
		}
		else
		{
	             response.sendRedirect("reg.jsp#tologin");

		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
%>





























</html>