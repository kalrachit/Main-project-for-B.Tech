
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
							<li><a class="active" href="StudentView.jsp">Home Page</a></li>
							<li><span><a href="StudentAcademics.jsp">Academics</a></span></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="DownloadFile.jsp">Downloads</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
						</ul>
					</nav>
				</div>
				<div class="contentadmin" style="background: white;">
					<div>
						<h2 align="center">
							<%
								String name = (String) session.getAttribute("name");
							%>
							<u style="margin-top: 10px">Welcome <%=name%></u>

						</h2>
						<div class="logout" align="right">
							<a href="LogOut.jsp">Log-Out</a>
						</div>
						<div style="width: 100%; height: 300px;">
							<table style="width: 100%; height: 100%">
								<tr style="width: 100%; height: 100%">
									<div
										style="width: 90%; margin-right: auto; margin-left =: auto margin-top:10px margin-botton:10px">
										<td style="width: 300px; height: 200px; margin-left: 30px">
											<div
												style="width: 200px; margin-right: 10px; height: 100%; margin-left: 10px; margin-botton: 10px">
												<img src="images/Deen-Bandhu-Sir-Chhotu-Ram_big.jpg"
													width="300px" height="90%">
											</div>
										</td>
										<td style="width: 100%; height: 100%">
											<div
												style="width: 80%; margin-left: 100px; height: 100%; margin-top: 30px; color: black">
												<p style="font-color: Black;">The erstwhile Chhotu Ram
													State College of Engineering, Murthal Haryana Government
													Institute was upgraded to Deenbandhu Chhotu Ram University
													of Science & Technology, Murthal through an act of
													legislation dated 30.10.2006 issued vide Haryana Govt.
													notification No. Leg./33-2006 dated 6.11.2006.The
													University is located on the National Highway No. 1(G.T.
													Road) 48 Km. from ISBT, New Delhi towards Chandigarh. The
													location of university falls within one of the fastest
													growing industrial belt of Haryana. The University is
													spread over 273 acres and has a fully residential campus
													with ample built up space in a contemporary architectural
													idiom.</p>
												<p>This university aims to create new frontier of
													knowledge and produce excellent engineers who have learnt
													their skills in an environment of highly competent &
													skilled faculty engineers who will known for their
													innovation, imagination, synthesizing & analytical
													competence, scientific intellect and who are committed to
													excellence.</p>
											</div>
										</td>
									</div>
								</tr>
							</table>
						</div>

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


