
<%@page import="java.sql.*"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration Page</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="footer_style.css">
		
		<link rel="stylesheet" href="header_styles.css">
		<link rel="stylesheet" href="styles.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    
    <body> 
	<div>
          <div class="header">
    <div class="header-container">
      <div class="logo" style="margin-left:25%">
      <a href="#">Gym Automation Tool</a>
      </div>
      <div class="toll-free">
       
      </div>
      <div class="clear"></div>
    </div>
  </div>

  

<div class="nav-wrapper">
    <div class="left-side">
      <div class="nav-link-wrapper">
       <a href="index.jsp">Home</a>
      </div>

      <div class="nav-link-wrapper ">
        <a href="admin.jsp">Admin </a>
      </div>

      <div class="nav-link-wrapper active-nav-link">
       <a href="UserRegistration.jsp">Register </a>
      </div>

      <!-- <div class="nav-link-wrapper">
        <a href="signUp.html">signUp</a>
      </div> -->
	  
	  <div class="nav-link-wrapper">
               <a href="Login.jsp">User Login </a>
      </div> 

    </div>

  </div>
        <div style="padding: 100px 0 0 200px;">
        <div id="register-box">
            
       
   <h2 style="margin-left:30%"><font size="6" color="black">User Registration</h2>
<br>
        <form name="form1" method="post" action="UserRegServlet">
				<div class="col-md-12 offset-md-3">
			
			<label class="col-md-2	" for="username" style="font-size:18px">UserName:</label>
                        <input type="text" class="col-md-2" style="height:30px" name="username" id="username">
			</div>
			<div class="col-md-12 offset-md-3">
			
			<label class="col-md-2" for="username" style="font-size:18px">Password:</label>
                        <input type="password" class="col-md-2" style="height:30px" name="password" id="password">
			</div>
			<div class="col-md-12 offset-md-3">
			
			<label class="col-md-2" for="username" style="font-size:18px">Email:</label>
                        <input type="text" class="col-md-2" style="height:30px" name="email" id="email">
			</div>
			<br>
			<div class="col-md-12 offset-md-4">
			<input type="submit" class="btn btn-primary" name="submit" id="submit" value="submit">
			<input type="button" class="btn btn-secondary" name="back" value="Back" onclick="window.location.href='index.jsp'" />
			</div>
            <!--<table>

                <tr>	
                    <td>

                        <div align="center"><font size="4" color="black" >UserName:</div>
						
                    </td>
                    <td>

                        <label for="username"></label>
                        <input type="text" name="username" id="username">
                    </td>
                    <br>
                </tr>
		
                
                <tr>
                    <td>
                        <br>
                        <div align="center"><font size="4" color="black">Password:</div>
                    </td>
                    <td>
                    <br>
                        <label for="password"></label>
                        <input type="password" name="password" id="password">
						<br>
                    </td>
                </tr>
				
				 <tr >
                    <td>
					<br>
                        <div align="center"><font size="4" color="black" >Email-Id:</div>
						
                    </td>
                    <td>
                    <br>
                        <label for="email"></label>
                        <input type="text" name="email" id="email">
                    </td>
                    <br>
                </tr>

            </table>       -->     
            <!--<table>
                <tr>
                    <br>
                    <td>
                        <div align="center" >
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <input type="submit" name="submit" id="submit" value="submit">
                        </div>
                    </td>
                     <td>
                        <div align="center">
&nbsp; &nbsp;&nbsp; <input type="button" name="back" value="Back" onclick="window.location.href='index.jsp'" >
                        </div>
                    </td>
                </tr>
            </table> -->
            </div>
        </div>
        </form>
 </div>
 <br><br>
<footer class="footer-distributed">
 
		<div class="footer-left">
 <br>
		<h3 style="margin-left:15%">Quick Links</h3>
 
		<p class="footer-links">
	·	<a href="index.jsp">Home</a>
	<br>
	·	<a href="admin.jsp">Admin </a>
	<br>
	·<a href="UserRegistration.jsp">Register </a>	
	<br>
	·	<a href="aboutus.jsp">About</a>
	<br>
	 ·  <a href="Login.jsp">User Login </a>
		</p>
 
		</div>
 
		<div class="footer-center">
		<br>
 <h3 style="margin-left:15%">Contact Us</h3>
		<div>
		<br>
		<i class="fa fa-map-marker"></i>
		<p>399 Lonsdale Street <br> Melbourn, VIC</p>
		</div>
 
		<div>
		<i class="fa fa-phone"></i>
		<p>+1 555 123456</p>
		</div>
 
		<div>
		<i class="fa fa-envelope"></i>
		<p><a href="#">contact@gymautomationtool.com</a></p>
		</div>
 
		</div>
 
		<div class="footer-right">
 
		
		<br>
		<h3 >Gym Automation Tool</h3>
		<br>
		<p class="footer-company-about">
	Morning: 6AM to 11 AM <br><br>
	Evening: 6PM to 11 PM <br><br>
	Sunday Closed
		</p>
 
		<div class="footer-icons">
 
		<a href="#"><i class="fa fa-facebook"></i></a>
		<a href="#"><i class="fa fa-twitter"></i></a>
		<a href="#"><i class="fa fa-linkedin"></i></a>
		<a href="#"><i class="fa fa-github"></i></a>
 
		</div>
 
		</div>
 
		</footer> 
    </body>      
</html>

    
