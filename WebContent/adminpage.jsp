<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

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
      
     <li><a href="userdetails.jsp" class="current">user Details</a>
     
   <li><a href="graph.jsp">Graph view</a>
   
   <li><a href="admin.jsp">Logout</a>
      
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
<center>
<table class="newtb1"><tr><td>
		<table class="newtb1" width="500" height="306" >
          <div align="center">
            <h2><font >Upload New File</font> </h2>
          </div>
          <form name="s" action="upload1.jsp" method="post" onSubmit="return valid()">
		
			<tr>
				<td>File Name</td>
				<td><input type="text" name="filename"></td>
			</tr>
			<tr>
				<td>File Id</td>
				<td><input name="id" value="<%=(int)(Math.random()*10000)%>" ></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><input id="demo1" type="text" size="20" name="date">
	   <a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="20" height="20" border="0" alt="Pick a date"></a></td>
			</tr>
			<tr>
				<td>Key Points</td>
				<td><input type="text" name="keypoints"></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Submit">&nbsp;&nbsp;
						<input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge green" value="Clear"></p></td>
			</tr>
			  </form>
		</table>
		</td><td>
		
		<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>		<img src="images/upload1.png" ></td></tr></table></center>




 
   
</div>

</body>
</html>