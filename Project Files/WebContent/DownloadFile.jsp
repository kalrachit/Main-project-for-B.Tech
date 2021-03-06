<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page language="java" import="java.sql.*,java.io.*"%>

<!DOCTYPE html>
<html>
<title>ERP-E'-DCRUST</title>
<meta charset="utf-8">
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
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						ERP-E'-DCRUST <strong class="slog">Making Learning a
							Better Experience</strong>
					</h1>

					<img src="images/DCRUSTLOGO.jpg" height=100px align="right"
						style="margin-right: 40px; margin-top: -7px" />

				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<%
								if (session.getAttribute("status").toString().equals("Student")) {
							%>
							<li><a href="StudentView.jsp">Home Page</a></li>
							<li><span><a href="StudentAcademics.jsp">Academics</a></span></li>
							<li><a href="DiscussionForumView.jsp">Discussion
									Forum</a></li>
							<li><a class="active" href="DownloadFile.jsp">Downloads</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
							<%
								} else if (session.getAttribute("status").toString()
										.equals("Teacher")) {
							%>
							<li><a href="TeacherView.jsp">Home Page</a></li>
							<li><a class="active" href="TeacherAcademics.jsp">Academics</a></li>
							<li><a href="#">Notice Board</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
							<%
								} else if (session.getAttribute("status").toString()
										.equals("Steno")) {
							%>
							<li><a href="StenoView.jsp">Home Page</a></li>
							<li><a href="AccountHandling.jsp">Account Handling</a></li>
							<li><a class="active" href="ContentManagement.jsp">Content Management</a></li>
							<li><a href="DiscussionForum.jsp">Discussion Forum</a></li>
							<li><a href="#">Notice Board</a></li>

							<%
								}
							%>
						</ul>
					</nav>
				</div>

				<div class="contentadmin" style="background: white;">
					<br> <br>
					<div>
						<div class="padding" align="center">

							<div class="padding" align="center">
								<div class="wrapper margin-bot">
									<form action="UploadFile2.jsp" method="post"
										enctype="multipart/form-data">

										<table class="tablemod"
											style="width: 700px; align: center; margin-top: -230px;"
											cellpadding="10px">
											<tr></tr>
											<tr></tr>
											<tr>
												<td align="center" colspan="4"><h2
														style="color: black; margin-center: 150px">Download
														Files</h2></td>
											</tr>

											<%
												String str = "uploaddata/";
												File dir = new File(
														"C:/Major project/ERP/Source Code/New/WebContent/uploaddata");
												String[] files = dir.list();
												String[] files2 = dir.list();
												String st = "";

												for (int i = 0; i < files.length; i++) {
													st = "";
													for (int j = 0; j < files[i].length(); j++) {
														if (files[i].charAt(j) != ' ') {
															st += files[i].charAt(j);
														} else
															st += "%20";
													}
													files[i] = st;
												}
												for (int i = 0; i < files.length; i++) {
													out.println("<tr><td style=\"margin-top:30px;\"><a HREF=" + str
															+ files[i] + ">   " + files2[i]
															+ "</a></td></tr></br></br>");
												}
											%>


										</table>
									</form>
								</div>
							</div>

						</div>
					</div>
					<br> <br>
				</div>
		</div>
		</header>


	</div>
	</div>
	</footer>
	</div>
	</div>
	<script src="js/jquery.cycle.all.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.slider').cycle({
				fx : 'all',
				speed : '600',
				next : '.next',
				prev : '.prev'
			});

		});
	</script>
</body>
</html>


