

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
		
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="footer_style.css">
		<link rel="stylesheet" href="header_styles.css">
    </head>
    
    <body> 
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
  <!-- Header ends --> 
  
  <!-- Nav start -->
  <div class="nav">
    <div class="nav-in">
      <ul>
        <li class="last">
            &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; 
            <a href="index.jsp">Home</a></li>
        <li><a href="admin.jsp">Admin </a></li>
        <li><a href="UserRegistration.jsp">Register </a></li>
        <li><a href="Login.jsp">Login </a></li>
        <li><a href="gympackage.html">Package</a></li>
		 <li><a href="blog.html">Blog</a></li>
        <li><a href="aboutus.html">About us </a></li>

<!--        <li class="no_bg ped"><a href="Contact.jsp">Contact us</a></li>-->
      </ul>
	  
    </div>
  </div>
        <div style="padding: 100px 0 0 200px;">
        <div id="login-box">
            
       
   <br/><br/><h2><font size="4" color="black">Login Page</h2>
   
        <form name="form1" method="post" action="LoginServlet">

                    
            <table>
			
                <tr >
                    <td style="padding-right:50px">
					
                        <div align="center"><font size="4" color="black" >UserName:</div>
						
                    </td>
                    <td>
                        <label for="username"></label>
                        <input type="text" name="username" id="username">
                    </td>
                    <br>
                </tr>
		
                <br/><br/>
                <tr>
                    <td style="padding-right:50px">
                        <br/>
                        <div align="center"><font size="4" color="black">Password:</div>
                    </td>
                    <td>
                        <label for="password"></label>
                        <input type="password" name="password" id="password">
                    </td>
                </tr>
            </table>            
            <table>
                <tr>
                    <br>
                    <td>
                        <div align="center" >
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <input type="submit" name="submit" id="submit" value="submit">
                        </div>
                    </td>
                     <td>
                        <div align="center">
&nbsp; &nbsp;&nbsp; <input type="button" name="back" value="Back" onclick="window.location.href='index.jsp'" >
                        </div>
                    </td>
                </tr>
            </table> 
            </div>
        </div>
        </form>
        <footer class="footer-distributed">
 
		<div class="footer-left">
 <br>
		<h3 style="margin-left:15%">Quick <span>Links</span></h3>
 
		<p class="footer-links">
	·	<a href="index.jsp">Home</a>
	<br>
	·	<a href="blog.jsp">Blog</a>
	<br>
	·	<a href="workoutdetails.jsp">Workout Home</a>
	<br>
	·	<a href="workout.jsp">Daily Workout</a>
	<br>
	·   <a href="package.jsp">Package</a>
	<br>
	·	<a href="aboutus.jsp">About</a>
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
