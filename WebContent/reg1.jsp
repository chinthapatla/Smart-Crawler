<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*,databaseconnection.databasecon"%>

<%

Connection con = null;
Statement st = null;
ResultSet rs1 = null;

String C = request.getParameter("passwordsignup");
String A = request.getParameter("usernamesignup");

String B = request.getParameter("emailsignup");



try{
con=databasecon.getconnection();
st=con.createStatement();


st.executeUpdate("insert into reg(username,email,password) values('"+A+"','"+B+"','"+C +"')");
response.sendRedirect("reg.jsp#toregister?Message=success");
st.close();

con.close();
}

catch(Exception ex)
{
	out.println(ex);
}
%>
