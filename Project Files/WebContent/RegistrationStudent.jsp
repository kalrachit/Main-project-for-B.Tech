<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title>ERP-E'-DCRUST</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>

</head>
<body id="page3">

	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						ERP-E'-DCRUST<strong class="slog">Making Learning A
							Better Experience</strong>
					</h1>
					<img src="images/DCRUSTLOGO.jpg" height=100px align="right"
						style="margin-right: 40px; margin-top: -7px" />

				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a href="StenoView.jsp">Home Page</a></li>
							<li><a class="active" href="AccountHandling.jsp">Account Handling</a></li>
							<li><a href="ContentManagement.jsp">Content Management</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="#">Notice Board</a></li>
						</ul>
					</nav>
				</div>

				<div class="row-3">
					<div class="padding" align="center">

						<form method="post" action="RegistrationStudent2.jsp" name="add">
							<section id="content" style="width: 1050px; margin-right: 100px">

								<div class="padding" align="center">
									<div class="wrapper margin-bot">

										<table class="tablemod1"
											style="width: 700px; margin-left: 15px; border-color: black;">
											<tr>
												<td align="center" colspan="4"><h2
														style="color: white; margin-left: 140px">Student
														Registration</h2></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Name</td>
												<td colspan="2" align="center"><input type="text"
													name="name" /></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Roll Number</td>
												<td colspan="2" align="center"><input type="text"
													name="rollno" /></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Father's Name</td>
												<td colspan="2" align="center"><input type="text"
													name="fname" /></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Address</td>
												<td colspan="2" align="center"><input type="text"
													name="address" /></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Email Id</td>
												<td colspan="2" align="center"><input type="text"
													name="email" /></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Date of birth</td>
												<td colspan="2" align="center"><input type="text"
													name="dob" /></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Year of
													Admission</td>
												<td colspan="2" align="center"><input type="text"
													name="yoa" /></td>
											</tr>
											
											<tr>
												<td align="right" style="color: Black">Gender</td>
												<td colspan="2" align="center" style="color: Black">Male
													<input type="radio" name="gender" value="Male" /> Female <input
													type="radio" name="gender" style="color: Black"
													value="Female" />
												</td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Course</td>
												<td colspan="2" align="center" style="color: Black">B.tech
													<input type="radio" name="course" value="B.tech" />M.tech <input
													type="radio" name="course" style="color: Black"
													value="M.tech" />
												</td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Mobile No.</td>
												<td colspan="3" align="center"><input type="text"
													name="contact"></td>
											</tr>
											<tr>
												<td align="right" style="color: Black">Current Year</td>
												<td colspan="3" align="center"><input type="text"
													name="csem"></td>
											</tr>
											<tr>
												<td><input type="submit" value="Next" name='act'
													style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 150px; width: 100px; margin-top: 20px" /></td>

												<td colspan="4"><input type="submit" value="Done"
													name='act'
													style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 200px; width: 100px; margin-top: 20px"></td>
												<td></td>
											</tr>
										</table>

									</div>

								</div>

							</section>
						</form>
					</div>
				</div>
			</header>

		</div>
	</div>
	<script type="text/javascript">
		Cufon.now();
	</script>
	<script type="text/javascript">
		$(function() {
			$('.slider')._TMS({
				prevBu : '.prev',
				nextBu : '.next',
				playBu : '.play',
				duration : 800,
				easing : 'easeOutQuad',
				preset : 'simpleFade',
				pagination : false,
				slideshow : 3000,
				numStatus : false,
				pauseOnHover : true,
				banners : true,
				waitBannerAnimation : false,
				bannerShow : function(banner) {
					banner.hide().fadeIn(500)
				},
				bannerHide : function(banner) {
					banner.show().fadeOut(500)
				}
			});
		})
	</script>
</body>
</html>

