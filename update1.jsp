<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*,databaseconnection.databasecon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>AquaBusiness</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="css/table.css" type="text/css" /></head>
<body id="top">
<div class="wrapper col1">
  
</div>
<div class="wrapper col2">
  <div id="header"><center><font size="+2" color="#FFFFFF" >SmartCrawler</font></center>
    <div class="fl_left">
      <h1><a href="#"> </a></h1>
      <p></p>
    </div>
    <ul id="topnav">
  
      <li class="active" ><a href="index.html">Home</a></li>
      
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">

<center>
         <table class="table">  
      
			<%

	String filename=request.getParameter("ss");

	String f=null;
				
String t=null;
try
{

Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from file where filename='"+ filename +"'");

ResultSet rs = ps.executeQuery();
while(rs.next())
{
f=rs.getString(7);
filename=rs.getString(2);


%>



		
      
  <form name="form" action="update2.jsp" method="post" onsubmit="return validation()">
  		<tr><td>
           <input type="text" name="a" value="<%=filename%>" readonly/>
            </td>
  		<tr>
  			<td><p><textarea name="b" cols="115"  rows="20"><%=f%></textarea></p></td>
		
     
		
       
 
   

          
	  <%
}

}
	catch(Exception e2)
	{
		out.println(e2.getMessage());
	}
%>
</tr>
<tr><td><input type="submit" value="update"/></td></tr>
       </form>
      </table>
	   
  </center>
   
</div>

</body>
</html>