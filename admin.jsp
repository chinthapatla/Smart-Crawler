<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SmartCrawler</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="css/table5.css" type="text/css" />
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
     <li class="last"><a href="reg.jsp#tologin">User Login</a></li>
      <li><a href="reg.jsp#toregister">New User</a>
      
     <li><a href="admin.jsp" class="active">Admin Login</a>
  
      <li ><a href="index.html">Home</a></li>
      
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
<center>
  <table class="table1" width="100%" height="369">
 
    <tr>
      <td width="430" height="276">
	<p>&nbsp;</p>
 <%
        			String faild="faild";
					String success="success";
        			String dd=request.getQueryString();
        			
        			if(dd==null){
        				
        			}
        			
        			else if(dd.equals(success)){%> 
        				<center><font size="5" color="red">Success Fully Register</font></center>
        				<%
        			}
        			else if(dd.equals(faild)){%> 
        				<center><font size="5" color="red">Login Failed </font></center>
						<%
        			}
        		%>
 
<p>&nbsp;</p> <center><h1>Admin Login</h1></center>
	   <form action="admin1.jsp" method="get" >
         <table class="table5"><tr><td>
      
              <label><font size='3'><strong>UserName </strong></font> <span class="required">*</span></label>
           </td><td>  <input type="text" name="username"  placeholder="UserName" class="field-long" required/>
         </td>  </tr>
           	  <tr> <td> 
              <label><font size='3'><strong>Your Password</strong></font> <span class="required">*</span></label>
              </td><td>  <input type="password" name="password"  placeholder="Password"  class="field-long" required/>
          </tr><tr> <td></td>  <td> 
     
                      <input name="submit" type="submit" value="Submit" /> <input name="reset" type="reset" value="Reset" />  
   </td> </tr>
           </table>
   
        </form>
		       
		
		
	  <p>&nbsp;</p>
		 <p>&nbsp;</p>
	 
	  
		</td>
      <td width="303"> 
	  
		<p>&nbsp;</p>
		 
	  		 <img src="images/administrator.png" width="403" height="373">
       
		
	  
		</td>
    </tr>
	
  </table>
</center>
</div>

</body>
</html>