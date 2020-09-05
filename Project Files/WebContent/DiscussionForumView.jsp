<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

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
<style>
.ui {
	margin-left: 70px;
}

.wi {
	width: 0.5cm;
}

.re {
	width: 2cm;
}

.view {
	margin-right: 90px;
	color: captiontext;
}
</style>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<sql:query var="result" dataSource="${snapshot}">
select * from discussion order by discussionid
</sql:query>
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
							<li><a class="active" href="DiscussionForumView.jsp">Discussion
									Forum</a></li>
							<li><a href="DownloadFile.jsp">Downloads</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
							<%
								} else if (session.getAttribute("status").toString()
										.equals("Teacher")) {
							%>
							<li><a href="TeacherView.jsp">Home Page</a></li>
							<li><a href="TeacherAcademics.jsp">Academics</a></li>
							<li><a href="#">Notice Board</a></li>
							<li><a class="active" href="DiscussionFormView.jsp">Discussion Forum</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
							<%
								}
								else if(session.getAttribute("status").toString().equals("Steno")){
							%>
							<li><a href="StenoView.jsp">Home Page</a></li>
							<li><a href="AccountHandling.jsp">Account Handling</a></li>
							<li><a href="ContentManagement.jsp">Content Management</a></li>
							<li><a class="active" href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="#">Notice Board</a></li>
							
							<%} %>
						</ul>
					</nav>
				</div>
				<div class="contentadmin" style="background: white;">
					<div>
						<h2 align="center">Existing Topics</h2>
						<div class="logout" align="right" style="margin-top: -100px">
							<form action="StartNewTopic.jsp" method="post">
								<input type="submit" name="act" value="Start New Topic"
									style="display: inline-block; margin-right: -60px; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; width: 170px; margin-top: 70px; margin-bottom: 10px"
									onclick="return (validate())" />
							</form>
						</div>

						<%
							int id = 0;
						%>
						<div style="margin-left: 100px; min-height: 200px">
							<table style="width: 920px" border="1">
								<tr>
									<td class="wi" style="color: maroon; font-size: large;">No.</td>
									<td style="color: maroon; font-size: large;">Topic</td>
									<td class="re" style="color: maroon; font-size: large;">Posted
										By</td>

								</tr>
								<c:forEach var='row' items='${result.rows }'>
									<tr>
										<td class="wi" style="color: black"><%=++id%></td>
										<td style="color: black"><a
											href='DiscussionForumView2.jsp?discussionid=${row.discussionid}'><c:out
													value='${row.question }' /></a></td>
										<td class="re" style="color: black"><c:out
												value="${row.name }" /></td>
									</tr>
								</c:forEach>
							</table>

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


