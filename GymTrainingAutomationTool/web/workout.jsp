
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
		<link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="styles.css">
	  <link rel="stylesheet" href="styles-workout.css">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
	<div class="">
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
       <a href="workoutdetails.jsp">Home</a>
      </div>

      <div class="nav-link-wrapper">
        <a href="aboutus.jsp">About us </a>
      </div>

      <div class="nav-link-wrapper">
       <a href="certificate.jsp">Certificate</a>
      </div>

      <!-- <div class="nav-link-wrapper">
        <a href="signUp.html">signUp</a>
      </div> -->

	  <div class="nav-link-wrapper">
        <a href="blog.jsp">Blog </a>
      </div>
	  <div class="nav-link-wrapper active-nav-link">
       <a href="workout.jsp">Workout </a>
      </div>
        <div class="nav-link-wrapper active-nav-link">
            <a href="package.jsp">Package </a>
        </div>
	   <div class="nav-link-wrapper">
       <a href="index.jsp">Logout </a>
      </div>

    </div>

  </div>
  <!--<div class="nav">
    <div class="nav-in">
      <ul>
        <li class="last">
            &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
            <a href="workoutdetails.jsp">Home</a></li>
                         <li><a href="certificate.jsp">Certificate</a></li>
             		<li><a href="blog.jsp">Blog </a></li>
             		<li><a href="package.jsp">Package </a></li>
             		<li><a href="workout.jsp">Workout </a></li>
                     <li><a href="aboutus.jsp">About us </a></li>
             		<li><a href="index.jsp">Logout </a></li>


      </ul>

    </div>
  </div>-->

  <form name="form1" method="post" action="WorkoutServlet">
      <div class="" style="background-color :white;"> <br>
	  <div class="text-center certifcation-header"><h3>Workout Details</h3></div>
<div class="form-box-work">

<div style="margin-top:0%;">

<div class="col-md-12 text-center"  style="margin-top:2%;">
<label for="Date-field" class="">Date:</label>
<input type="date" id="field" class="" placeholder="dd-mm-yyyy" value=""
        min="1997-01-01" max="2030-12-31" name="date">
</div>
<br>
<div class="col-md-12 offset-md-2">
<label>From: <label>
<input type="time" name="time1"  />&nbsp;&nbsp;
<label>To: <label>
<input type="time" name="time2" />
</div>
<div class="col-md-12 offset-md-2">&nbsp;
<label for="hardcore">Warm-up minuts:    </label>&nbsp;<input type="number" class="col-md-2" name="warmuptime" onkeypress="return event.charCode >= 15" min="0"/>
</div><br>
<div class="col-md-12 offset-md-1">
  <label for="hardcore">Hardcore workout:</label>
  <select id="hardcore" name="hardcore">
  <option value="None">None</option>
    <option value="Chest">Chest</option>
    <option value="Triceps">Triceps</option>
    <option value="fiat">Back</option>
    <option value="Biceps">Biceps</option>
	<option value="Shoulder">Shoulder</option>
	<option value="Legs">Legs</option>
  </select>
  &nbsp;
  <label for="cars">Minutes:</label>
  <input type="number" class="col-md-2" name="hardcoretime" onkeypress="return event.charCode >= 60" min="0"/>
</div>
<br>
<div class="col-md-12 offset-md-1">
  <label for="cardio">Cardio:</label>
  <select id="cardio" name="cardio">
   <option value="None">None</option>
  <option value="Trademill">Trademill</option>
    <option value="Cycling">Cycling</option>
    <option value="stair">Stair Climber</option>
    <option value="jumpingRope">Jumping Rope</option>
    <option value="Rowing">Rowing Machine</option>
	<option value="spinBike">Spin Bike</option>
  </select>
  &nbsp;
  <label for="cars">Minutes:</label>
  <input type="number" class="col-md-2"  name="cardiotime" onkeypress="return event.charCode >= 60" min="0"/>
</div>
<br>
<div class="col-md-12 offset-md-1">
  <label for="abs">ABS:</label>
  <select id="abs" name="abs">
   <option value="None">None</option>
  <option value="plank">Plank</option>
    <option value="moutnainClimbers">Mountain climbers</option>
    <option value="sideCrunch">Side crunch</option>
    <option value="trunkTwist">Trunk twist</option>
	<option value="sideraise">Lying side raise</option>
  </select>
  &nbsp;
  <label for="cars">Minutes:</label>
  <input type="number" class="col-md-2" name="abstime" onkeypress="return event.charCode >= 60" min="0"/>
</div>
  <br>
                        <div align="center" >
&nbsp; &nbsp;&nbsp; <input class="btn btn-primary" type="submit" name="submit" id="submit" value="submit">

&nbsp;  <input class="btn btn-secondary" type="button" name="back" value="Back" onclick="window.location.href='index.jsp'" >
                        </div>


</div>
</div>
</div>
        </form>
</div>

<footer class="footer-distributed">

		<div class="footer-left">
 <br>
		<h3 style="margin-left:15%">Quick Links</h3>

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


