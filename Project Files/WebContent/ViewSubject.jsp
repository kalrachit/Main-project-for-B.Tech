<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<li><a href="TeacherView.jsp">Home Page</a></li>
							<li><a class="active" href="TeacherAcademics.jsp">Academics</a></li>
							<li><a href="#">Notice Board</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
						</ul>
					</nav>
				</div>
				<div class="contentadmin" style="background: white;">
					<div>
						<br> <br>
						<section id="content" style="margin-left: 20%; width: 50%">
							<h2 align="center" style="margin-left: 140px">
								<u>Available Subjects</u>
							</h2>
							<sql:setDataSource var="snapshot"
								driver="oracle.jdbc.driver.OracleDriver"
								url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
								password="erp" />
							<div>

								<c:catch var="exception">
									<sql:query var="result" dataSource="${snapshot}">
											select distinct Subject, description,subjectid from Subjects
											
										</sql:query>
								</c:catch>
								<%
									int id = 0;
								%>
								<center>
									<table border="1" style="width: 1000px; margin-left: -190px">
										<tr></tr>
										<tr>
											<td align="center"
												style="font-size: large; color: maroon; width: 50px"><b>S.No.</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 150px"><b>Subject
													Id</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 200px"><b>Subject
													Name</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 400px"><b>Description</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 100px"><b>View</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 100px"><b>Edit</b></td>

										</tr>
										<c:forEach var="row" items="${result.rows}">
											<tr style="margin-bottom: 100px">
												<td align="center" style="width: 50px"><font
													color=Black><%=++id%></font></td>
												<td align="center" style="width: 150px"><font
													color=Black><c:out value="${row.subjectid }" /></font></td>
												<td align="center" style="width: 200px"><font
													color=Black><c:out value="${row.subject }" /></font></td>
												<td align="center" style="width: 400px"><font
													color=Black><c:out value="${row.description }" /></font></td>
												<td align="center" style="width: 100px"><a
													href="ViewSubjectDetails.jsp?id=${row.subjectid}">View</a></td>
												<td align="center" style="width:100px"><a href='EditSubjectDetails.jsp?id=${row.subjectid}'>
														Edit</a></td>

											</tr>
										</c:forEach>

									</table>
									<br> <br>
								</center>

								<br> <br>
							</div>
						</section>
					</div>
				</div>
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


