<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>
<%@ page import="java.sql.*,databaseconnection.databasecon"%>
    <%@ page import="java.sql.*,databaseconnection.*"%>
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
<link rel="stylesheet" href="css/table.css" type="text/css" />
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
  
     <%
String images1="images";
String dirName = getServletContext().getRealPath("");
String dirName1=dirName+"/"+images1+"/";

System.out.println("path"+dirName1);
String query="SELECT keyword,count from seachitem";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/smartcrawler","com.mysql.jdbc.Driver","root","admin");

dataset.executeQuery(query);
JFreeChart chart = ChartFactory .createBarChart3D("View count ", "searchkey", "count",dataset, PlotOrientation.VERTICAL, true, true, false);


try
{
ChartUtilities.saveChartAsJPEG(new File(dirName1+"logotype2.jpg"), chart, 700, 300);

}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
<p>&nbsp;</p>

      <img src="images/logotype2.jpg" width="760" height="350" />
    <p>&nbsp;</p>
</center>
 
   
</div>

</body>
</html></html>