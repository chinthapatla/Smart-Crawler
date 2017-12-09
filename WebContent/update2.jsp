<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"  import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%


String file=request.getParameter("a");
String b=request.getParameter("b");
out.println(b);

 try
{
	Connection con = databasecon.getconnection();

PreparedStatement ps=con.prepareStatement("update file set f='"+b+"' where filename='"+file+"' ");
ps.executeUpdate();
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
response.sendRedirect("success.jsp?success");
%>