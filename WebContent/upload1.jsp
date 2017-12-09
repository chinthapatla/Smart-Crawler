<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
			String filename=request.getParameter("filename");
			session.setAttribute("filename",filename);
			String id=request.getParameter("id");
			session.setAttribute("id",id);
			String date=request.getParameter("date");
			session.setAttribute("date",date);
			String keypoints=request.getParameter("keypoints");
			session.setAttribute("keypoints",keypoints);
		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Template Name: AquaBusiness
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>AquaBusiness</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="css/tablenew2.css" type="text/css" />



</head>
<body id="top">
<div class="wrapper col1">
  
</div>
<div class="wrapper col2">
  <div id="header"><center><font size="+2" color="#FFFFFF" >SmartCrawler: A Two-stage Crawler for
Efficiently Harvesting Deep-Web Interfaces </font></center>
    <div class="fl_left">
      <h1><a href="#"> </a></h1>
      <p></p>
    </div>
    <ul id="topnav">
     <li class="last"><a href="adminpage.jsp" class="active">Upload File</a></li>
      <li><a href="update.jsp">Update</a>
      
     <li><a href="userview.jsp">user Details</a>
     
   <li><a href="graph.jsp">Graph view</a>
   
  
      
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
<center>


<table class="newtb1"><tr><td>
		<table class="newtb1" width="500"">
		<div align="center">
           <h2><font >Attach Your File</font> </h2>
          </div>
		<form name="f2" action="upload2.jsp" ENCTYPE="multipart/form-data" method="post">
			<tr>
				<td>File Name</td>
				<td><input type="text" name="filename" value="<%=filename%>"></td>
			</tr>
			<tr>
				<td>File Id</td>
				<td><input type="text" name="id" value="<%=id%>" ></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input type="text" name="date" value="<%=date%>"></td>
			</tr>
			
			<tr>
				<td>Key Points</td>
				<td><input type="text" name="keypoints" value="<%=keypoints%>"></p></td>
			</tr>
			<tr>
				<td>File</td>
				<td><input  type="file" name="file"></td>
			</tr>
			<tr>
				<td></td>
				<td>&nbsp;&nbsp;<input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Submit">&nbsp;&nbsp;
						<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></td>
			</tr>
			  </form>
		</table>
		</td><td>
		
				<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	
		<img src="images/upload.jpg" ></td></tr></table>



</center>


 
   
</div>

</body>
</html>