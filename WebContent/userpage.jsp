<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*,databaseconnection.databasecon"%>

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
<style>#search-form {
	background: #e1e1e1; /* Fallback color for non-css3 browsers */
	width: 365px;

	/* Gradients */
	background: -webkit-gradient( linear,left top, left bottom, color-stop(0, rgb(243,243,243)), color-stop(1, rgb(225,225,225)));
	background: -moz-linear-gradient( center top, rgb(243,243,243) 0%, rgb(225,225,225) 100%);

	/* Rounded Corners */
	border-radius: 17px;
	-webkit-border-radius: 17px;
	-moz-border-radius: 17px;

	/* Shadows */
	box-shadow: 1px 1px 2px rgba(0,0,0,.3), 0 0 2px rgba(0,0,0,.3);
	-webkit-box-shadow: 1px 1px 2px rgba(0,0,0,.3), 0 0 2px rgba(0,0,0,.3);
	-moz-box-shadow: 1px 1px 2px rgba(0,0,0,.3), 0 0 2px rgba(0,0,0,.3);
}

/*** TEXT BOX ***/
input[type="text"]{
	background: #fafafa; /* Fallback color for non-css3 browsers */

	/* Gradients */
	background: -webkit-gradient( linear, left bottom, left top, color-stop(0, rgb(250,250,250)), color-stop(1, rgb(230,230,230)));
	background: -moz-linear-gradient( center top, rgb(250,250,250) 0%, rgb(230,230,230) 100%);

	border: 0;
	border-bottom: 1px solid #fff;
	border-right: 1px solid rgba(255,255,255,.8);
	font-size: 16px;
	margin: 4px;
	padding: 5px;
	width: 250px;

	/* Rounded Corners */
	border-radius: 17px;
	-webkit-border-radius: 17px;
	-moz-border-radius: 17px;

	/* Shadows */
	box-shadow: -1px -1px 2px rgba(0,0,0,.3), 0 0 1px rgba(0,0,0,.2);
	-webkit-box-shadow: -1px -1px 2px rgba(0,0,0,.3), 0 0 1px rgba(0,0,0,.2);
	-moz-box-shadow: -1px -1px 2px rgba(0,0,0,.3), 0 0 1px rgba(0,0,0,.2);
}

/*** USER IS FOCUSED ON TEXT BOX ***/
input[type="text"]:focus{
	outline: none;
	background: #fff; /* Fallback color for non-css3 browsers */

	/* Gradients */
	background: -webkit-gradient( linear, left bottom, left top, color-stop(0, rgb(255,255,255)), color-stop(1, rgb(235,235,235)));
	background: -moz-linear-gradient( center top, rgb(255,255,255) 0%, rgb(235,235,235) 100%);
}

/*** SEARCH BUTTON ***/
input[type="submit"]{
	background: #44921f;/* Fallback color for non-css3 browsers */


	/* Gradients */
	background: -webkit-gradient( linear, left top, left bottom, color-stop(0, rgb(79,188,32)), color-stop(0.15, rgb(73,157,34)), color-stop(0.88, rgb(62,135,28)), color-stop(1, rgb(49,114,21)));
	background: -moz-linear-gradient( center top, rgb(79,188,32) 0%, rgb(73,157,34) 15%, rgb(62,135,28) 88%, rgb(49,114,21) 100%);

	border: 0;
	color: #eee;
	cursor: pointer;
	float: right;
	font: 16px Arial, Helvetica, sans-serif;
	font-weight: bold;
	height: 30px;
	margin: 4px 4px 0;
	text-shadow: 0 -1px 0 rgba(0,0,0,.3);
	width: 84px;
	outline: none;

	/* Rounded Corners */
	border-radius: 30px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;

	/* Shadows */
	box-shadow: -1px -1px 1px rgba(255,255,255,.5), 1px 1px 0 rgba(0,0,0,.4);
	-moz-box-shadow: -1px -1px 1px rgba(255,255,255,.5), 1px 1px 0 rgba(0,0,0,.2);
	-webkit-box-shadow: -1px -1px 1px rgba(255,255,255,.5), 1px 1px 0 rgba(0,0,0,.4);
}
/*** SEARCH BUTTON HOVER ***/
input[type="submit"]:hover {
	background: #4ea923; /* Fallback color for non-css3 browsers */

	/* Gradients */
	background: -webkit-gradient( linear, left top, left bottom, color-stop(0, rgb(89,222,27)), color-stop(0.15, rgb(83,179,38)), color-stop(0.8, rgb(66,143,27)), color-stop(1, rgb(54,120,22)));
	background: -moz-linear-gradient( center top, rgb(89,222,27) 0%, rgb(83,179,38) 15%, rgb(66,143,27) 80%, rgb(54,120,22) 100%);
}
input[type="submit"]:active {
	background: #4ea923; /* Fallback color for non-css3 browsers */

	/* Gradients */
	background: -webkit-gradient( linear, left bottom, left top, color-stop(0, rgb(89,222,27)), color-stop(0.15, rgb(83,179,38)), color-stop(0.8, rgb(66,143,27)), color-stop(1, rgb(54,120,22)));
	background: -moz-linear-gradient( center bottom, rgb(89,222,27) 0%, rgb(83,179,38) 15%, rgb(66,143,27) 80%, rgb(54,120,22) 100%);
}</style></head>
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
     <li class="last"><a href="reg.jsp#tologin">LogOut</a></li>
    
      
     <li><a href="ranking.jsp">ranking</a>
  
      <li class="active"><a href="userpage.jsp">Home</a></li>
      
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
<p>&nbsp;</p>

<center>
                   <form name="s" action="search.jsp" id="search-form">
 <input type="text" name="search" id="file" onKeyUp="loadXMLDoc()"/> 
  <input type="submit" value="Search" />
 
</form>
		
</center>

<p>&nbsp;</p>

<table><tr><td><img src="images/a.png"/></td><td><p>&nbsp;</p><marquee behavior="alternate"><img src="images/relevancy.png"/></marquee></td></tr></table>

<p>&nbsp;</p>

   
</div>

</body>
</html>