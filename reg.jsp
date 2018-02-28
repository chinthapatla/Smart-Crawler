<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SmartCrawler</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/demo.css" />
   <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
		<link rel="stylesheet" href="css/tablenew2.css" type="text/css" />
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
     
 <li><a href="admin.jsp">Admin Login</a>
      <li ><a href="index.html">Home</a></li>
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
<table class="newtb1"><tr><td> <img src="images/V81iD.png" height="300"/></td><td>
 <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="login.jsp" name="f1" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname"  > Your Username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" > Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="*****" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register"  class="animate form">
                            <form  action="reg1.jsp" autocomplete="on"> 
                                <h1> Register </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" >Your Username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="Username" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="abc@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" >Your Password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="password"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Re-type Password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="retype-password"/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Register"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
               </div>  
            </section>
			</td></tr></table>	

</div>

</body>
</html>