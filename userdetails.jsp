<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" %>
<%@ page import="databaseconnection.databasecon"%>
<%@ page import="java.util.ArrayList" import=" java.util.Arrays"%>
<%@ page import="java.util.*"%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SmartCrawler</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="css/table.css" type="text/css" />
<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript">

function valid()
{
var a=document.s.filename.value;
if(a=="")
{
alert("Enter Filename Name");
document.s.filename.focus();
return false;
}
var b=document.s.date.value;
if(b=="")
{
alert("Choose Date");
document.s.date.focus();
return false;
}
var c=document.s.keypoints.value;
if(c=="")
{
alert("Enter Keypoints");
document.s.keypoints.focus();
return false;
}
}
</script>
</head>
<body id="top">
<div class="wrapper col1">
  
</div>
<div class="wrapper col2">
  <div id="header"><center><font size="+2" color="#FFFFFF" >SmartCrawler </font></center>
    <div class="fl_left">
      <h1><a href="#"> </a></h1>
      <p></p>
    </div>
    <ul id="topnav">
	 <li><a href="admin.jsp">Logout</a>
        <li class="last"><a href="adminpage.jsp" class="active">Upload File</a></li>
      <li><a href="update.jsp">Update</a>
      
    
     
   <li><a href="graph.jsp">Graph view</a>
   
  
      
  
      
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
<center>
 <table class="table" width="37%" height="153" >
    <tr  bgcolor="#FF6600" > 
      <td height="50">USer id</td>
      <td>User Name</td>
      <td width="30%">Email</td>
     
    </tr>
    <%  
					 String g=request.getParameter("da"); 
					String email=null,fname=null,address=null,ownername=null,sex=null,user=null;
		  
	
             		   try
		   {
			   	Connection con1=databasecon.getconnection(); 
   				Statement st1=con1.createStatement();
				ResultSet rs1 =st1.executeQuery("SELECT * FROM reg");
				while(rs1.next())
				{
				
				//newset.add(rs1.getString("Username"));
				//uid
				int uid=rs1.getInt("uid");
		
           
				 fname=rs1.getString("username");
				
				  email=rs1.getString("email");
				
				 
				 %>
    <%
				
					
					/*Iterator<String> iterator = newset.iterator();
                while (iterator.hasNext())
            {
			String s1=iterator.next();*/
			%>
    <tr > 
    <td width="16%"> <%=uid%></td>
        <td width="16%"> <%=fname%></td>

      <td width="16%"> <%=email%></td>

    </tr>
    <%	
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}





%>
  </table>

</center>
 
   
</div>

</body>
</html>