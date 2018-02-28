<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SmartCrawler</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="css/tablenew2.css" type="text/css" />
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
  <div id="header"><center><font size="+2" color="#FFFFFF" >SmartCrawler
 </font></center>
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
 <%
			String ans=(String)session.getAttribute("ans");
			String filename=(String)session.getAttribute("filename");
		%>
  </div>
  
  <table class="newtb1" align="center" >
  <form name="form" action="temp1.jsp" method="post" onsubmit="return validation()">
  		<tr>
  			<td><p><textarea name="b" cols="115"  rows="20"><%=ans%></textarea></p></td>
		</tr>
          <tr> 
            <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="image" src="images/original.png"/> </td>
          </tr>
		  </form>
        </table>
 
   
</div>

</body>
</html>