<%@page import="java.sql.*"%>
<%@page import="com.commondb.Common_DB"%>
<%@page import="java.util.ArrayList"%>
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
        <a href="aboutus.jsp">About us </a>
      </div>

      <div class="nav-link-wrapper active-nav-link">
       <a href="certificate.jsp">Certificate</a>
      </div>

      <!-- <div class="nav-link-wrapper">
        <a href="signUp.html">signUp</a>
      </div> -->

	  <div class="nav-link-wrapper">
        <a href="blog.jsp">Blog </a>
      </div>
	  <div class="nav-link-wrapper">
       <a href="workout.jsp">Workout </a>
      </div>
		<div class="nav-link-wrapper">
			<a href="package.jsp">Package</a>
		</div>
	   <div class="nav-link-wrapper">
       <a href="index.jsp">Logout </a>
      </div>

    </div>

  </div>
  <!-- Nav start -->

  </div>
  <form name="form1" method="post" action="CertificateServlet">
        <div style="padding: 0px 0 0 200px;">
        <div id="login-box">


   	<div class="container">
				<br>
				<h1 style="color:black" class="certifcation-header-1">Certification</h1>
				<!--<hr>--><br>
				<div>

								<div class="question-wrapper">
									<label id="label_14"  for="none" style="width: 100%;">
										<div  style="width: 50%;">
											<h1 placeholder="Type a question" contenteditable="true" data-gramm="false" style="width: 100%;color:#3498DB">Questionnaire:
											</h1>
										</div>
									</label>
									<div align="left" style="margin-left:0%">
										<table style="margin-left:0%;" summary="" role="presentation" cellpadding="4" cellspacing="0" data-component="matrix">
										<div >
											<tr class="question-form">
												<th  style="font-size:22px;color:black;" >Questions</th>
												<th scope="col"  >
													<div  >
														<div placeholder="Type Col Name" style="color:black;"  contenteditable="true" data-gramm="false">Yes</div>
													</div>
												</th>
												<th scope="col"  >
													<div>
														<div placeholder="Type Col Name" style="color:black;" contenteditable="true" data-gramm="false">No</div>
													</div>
												</th>
											</tr>
										</div>
										<div>
											<tr  role="group"  >
												<th scope="row" style="padding:1%;">
													<div>
														<div placeholder="Type Row Name" align="left" style="color:black;" >Has your doctor ever said that you have a heart condition and that you should only do physical activity recommended by a doctor?</div>
													</div>
												</th>
												<td>
													<input id="input_14_0_0" type="radio" name="q14_parq14[0]" tabindex="-1" aria-labelledby="label_14_col_0"
													value="Yes">
														<label for="input_14_0_0" />
													</td>
													<td>
														<input id="input_14_0_1"  type="radio" name="q14_parq14[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
															<label for="input_14_0_1" />
														</td>
													</tr>
													<tr  role="group" style="padding:10%;"  >
														<th scope="row" style="padding:1%;">
															<div class="editor-container editorHasText" align="left">
																<div placeholder="Type Row Name" style="color:black;" >Do you feel pain in your chest when you do physical activity?</div>
															</div>
														</th>
														<td>
															<input id=""  type="radio" name="q14_parq14_1[0]" tabindex="-1" required="" aria-labelledby="label_14_col_0" value="Yes">
																<label for="input_14_0_0" />
															</td>
															<td >
																<input id="input_14_0_1"  type="radio" name="q14_parq14_1[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
																	<label for="input_14_0_1" />
																</td>
															</tr>
															<tr  role="group" aria-labelledby="" >
																<th scope="row" style="padding:1%;">
																	<div class="editor-container editorHasText" >
																		<div placeholder="Type Row Name" align="left" style="color:black;" >In the past month, have you had chest pain when you were not doing physical activity?</div>
																	</div>
																</th>
																<td  >
																	<input id=""  type="radio" name="q14_parq14_2[0]" tabindex="-1" required="" aria-labelledby="label_14_col_0" value="Yes">
																		<label for="input_14_0_0" />
																	</td>
																	<td >
																		<input id="input_14_0_1"  type="radio" name="q14_parq14_2[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
																			<label for="input_14_0_1" />
																		</td>
																	</tr>
																	<tr  role="group" aria-labelledby="" style="width:100%">
																		<th scope="row" style="padding:1%;">
																			<div class="editor-container editorHasText" align="left" >
																				<div placeholder="Type Row Name" contenteditable="" data-gramm="" style="color:black;" >Do you lose balance because of dizziness or do you ever lose consciousness?</div>
																			</div>
																		</th>
																		<td  >
																			<input id=""  type="radio" name="q14_parq14_3[0]" tabindex="-1" required="" aria-labelledby="label_14_col_0" value="Yes">
																				<label for="input_14_0_0" />
																			</td>
																			<td >
																				<input id="input_14_0_1"  type="radio" name="q14_parq14_3[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
																					<label for="input_14_0_1" />
																				</td>
																			</tr>
																			<tr  role="group" aria-labelledby="" >
																				<th scope="row" style="padding:1%;">
																					<div class="editor-container editorHasText" >
																						<div placeholder="Type Row Name" align="left" style="color:black;" >Do you have bone or joint problem (for example, back, knee, or hip) that could be worsen by a change in your physical activity?</div>
																					</div>
																				</th>
																				<td  >
																					<input id=""  type="radio" name="q14_parq14_4[0]" tabindex="-1" required="" aria-labelledby="label_14_col_0" value="Yes">
																						<label for="input_14_0_0" />
																					</td>
																					<td >
																						<input id="input_14_0_1"  type="radio" name="q14_parq14_4[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
																							<label for="input_14_0_1" />
																						</td>
																					</tr>
																					<tr  role="group" aria-labelledby="" >
																						<th scope="row" style="padding:1%;">
																							<div class="editor-container editorHasText" >
																								<div placeholder="Type Row Name"align="left" style="color:black;" >Is your doctor currently prescribing drugs (for example water pills) for your blood pressure or heart condition?</div>
																							</div>
																						</th>
																						<td  >
																							<input id=""  type="radio" name="q14_parq14_5[0]" tabindex="-1" required="" aria-labelledby="label_14_col_0" value="Yes">
																								<label for="input_14_0_0" />
																							</td>
																							<td >
																								<input id="input_14_0_1"  type="radio" name="q14_parq14_5[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
																									<label for="input_14_0_1" />
																								</td>
																							</tr>
																							<tr  role="group" aria-labelledby="" >
																								<th scope="row" style="padding:1%;" >
																									<div class="editor-container editorHasText" >
																										<div placeholder="Type Row Name" align="left" style="color:black;" >Do you know of any other reason why you should not do physical activity?</div>
																									</div>
																								</th>
																								<td  >
																									<input id=""  type="radio" name="q14_parq14_6[0]" tabindex="-1" required="" aria-labelledby="label_14_col_0" value="Yes">
																										<label for="input_14_0_0" />
																									</td>
																									<td >
																										<input id="input_14_0_1"  type="radio" name="q14_parq14_6[0]" tabindex="-1" required="" aria-labelledby="label_14_col_1" value="No">
																											<label for="input_14_0_1" />
																										</td>
																									</tr>
																									</div>
																								</table>
																							</div>
																							<br><br>
																							<div style="align-content: center;">
																					<h4 style="color:#3498DB">Other health related problems if any:</h4><br>
							<textarea id="other" name="other" left autofocus rows="10" cols="70" placeholder="Enter other health related problems here"></textarea>


																				</div>
																						</div>


																				<br><br>
																			 <button style="margin-left:20%;" type="submit" class="submit-btn-certificate">Submit</button>
																			</div>
																		</div>

username: <%= request.getParameter("username") %>

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



