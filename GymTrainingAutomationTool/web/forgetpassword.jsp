

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
  <!-- Header ends --> 
  <div class="nav-wrapper">
    <div class="left-side">
      <div class="nav-link-wrapper">
       <a href="workoutdetails.jsp">Home</a>
      </div>

      <div class="nav-link-wrapper">
        <a href="admin.jsp">Admin </a>
      </div>

      <div class="nav-link-wrapper">
       <a href="UserRegistration.jsp">Register </a>
      </div>

      <!-- <div class="nav-link-wrapper">
        <a href="signUp.html">signUp</a>
      </div> -->
	  
	  <div class="nav-link-wrapper active-nav-link">
               <a href="Login.jsp">User Login </a>
      </div> <div class="nav-link-wrapper">
              <a href="aboutus.jsp">About us </a>
      </div> 

    </div>
  </div>

        <div style="padding: 10px 0 0 10px;">
        <div id="login-box">
            
       
   <br/><h2 class="offset-md-5"><font size="6" color="black">Forget Password</h2>
   
        <form name="form1" method="post" action="ForgetNewServlet">
        
        <form name="form1" method="post" action="LoginServlet">
		<div class="col-md-12 offset-md-4">
		<div  class="col-md-12 offset-md-0">
			
			<label  for="number" style="font-size:18px">OTP :</label>
                        <input type="number" class="col-md-2" style="height:30px" name="number" id="number">
			</div>
			<div class="col-md-12 offset-md-0">
			
			<label  for="password" style="font-size:18px">Enter new Password:</label>
                        <input type="password" class="col-md-2" style="height:30px" name="password" id="password" >
			</div>
			<div class="col-md-12 offset-md-0">
			
			<label for="passwordnew" style="font-size:18px">Confirm Password:</label>
                        <input type="password" class="col-md-2" style="height:30px" name="passwordnew" id="password" >
			</div>
			<br>
			<div class="col-md-12 offset-md-0">
			<input class="btn btn-primary" type="submit" class="primary" name="submit" id="submit" value="submit">
			<input class="btn btn-secondary" type="button" name="back" value="Back" onclick="window.location.href='index.jsp'"  />
			</div>
			</div>
                <!--<table>
                <tr>
                    <td >
                        <div ><font size="2" color="black" ><b>OTP:</b></div>
						
                    </td>
                    <td>
                        <label for="number"></label>
                        <input type="number" name="number" id="number">

                    </td>
                    <br>
                </tr>
		
                <br/>
                <tr>
                    <td style="padding-right:50px">
                        <br>
                        <div ><font size="2" color="black"><b>Enter new Password:</b></div>
                    </td>
                    <td>
                    <br>
                        <label for="password"></label>
                        <input type="password" name="password" id="password">
                    </td>
                </tr>
				 <br/>
				<tr>
                    <td style="padding-right:50px">
                        <br>
                        <div><font size="2" color="black"><b>Confirm Password:</b></div>
                    </td>
                    <td>
                    <br>
                        <label for="passwordnew"></label>
                        <input type="password" name="passwordnew" id="password">
                    </td>
                </tr>

            </table> -->
            <!--<table>
                <tr>
                   
                    <td>
                        <div align="center" >
&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <input type="submit" name="submit" id="submit" value="submit">
                        </div>
                    </td>
                     <td>
                        <div align="center">
&nbsp; &nbsp;&nbsp; <input type="button" name="back" value="Back" onclick="window.location.href='index.jsp'" >
                        </div>
                    </td>
					<br>
					
                    
                </tr>

                       
            </table>	-->
        </form>
        


			
            </div>
        </div>
        </form>
		<br>
       </div> 


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
	·   <a href="package.jsp">Package</a>
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
<style>

h2 {
	font-size: 22px;
	margin-left:20%;
}
table{
margin-left:0%;
}
</style>	
</html>
