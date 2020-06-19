<%@page import ="java.sql.*"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "gymautomation";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
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
    
    <body> <div>
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
 <div class="nav-wrapper">
    <div class="left-side">
      <div class="nav-link-wrapper">
       <a href="workoutdetails.jsp">Home</a>
      </div>

      <div class="nav-link-wrapper active-nav-link">
        <a href="admin.jsp">Admin </a>
      </div>

      <div class="nav-link-wrapper">
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
        <div id="login-box">
            
       
   <br/><br/><h3><font size="6" color="black">User Details</h3>

<br>
<table id="customers">
<tr>
<td>Username</td>
<td>Date</td>
<td>From</td>
<td>To</td>
<td>WarmupTime</td>
<td>HardCore</td>
<td>HardCoreTime</td>
<td>Cardio</td>
<td>CardioTime</td>
<td>Abs</td>
<td>AbsTime</td>
</tr>
<%
try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from workout";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("from") %></td>
<td><%=resultSet.getString("to") %></td>
<td><%=resultSet.getString("warmuptime") %></td>
<td><%=resultSet.getString("hardcore") %></td>
<td><%=resultSet.getString("hardcoretime") %></td>
<td><%=resultSet.getString("cardio") %></td>
<td><%=resultSet.getString("cardiotime") %></td>
<td><%=resultSet.getString("abs") %></td>
<td><%=resultSet.getString("abstime") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</div>
</div>


<br><br><br>
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
<style>
a1{
color:#3254F2;
margin-left:31%;
font-size:20px;
}
h3 {
	font-size: 22px;
	margin-left:20%;
	}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin-left:0%;
  font-size:15px;
  background-color:gray;
  border:1px;
}

#customers td, #customers th {
  border: 1px solid black;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>	
</html>
