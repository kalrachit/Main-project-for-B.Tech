<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="css/mycss.css" type="text/css"
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
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<c:catch var="exception">
		<sql:query var="result" dataSource="${snapshot}">
select * from answers where discussionid=? order by answerid
<sql:param value="${param.discussionid }"></sql:param>
		</sql:query>
	</c:catch>
	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						ERP-E'-DRCUST <strong class="slog">Making Learning a
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
						<br>
						<h3 align="Left" style="margin-left: 50px;color:black;margin-top:10px">

							<sql:query var="result1" dataSource="${snapshot}">
							select * from discussion where discussionid=?
							<sql:param value="${param.discussionid }"/>
							</sql:query>

							<c:forEach var="row" items="${result1.rows}">
								<c:out value="${row.question }"></c:out>
							</c:forEach>
						</h3>
						<p style="margin-left: 50px">
							Posted by:
							<c:forEach var="row" items="${result1.rows}">
								<c:out value="${row.name }"></c:out>
							  on  <c:out value="${row.dop }"></c:out>
							</c:forEach>

						</p>
					</div>


					<div class="logout" align="right"></div>

					<div style="margin-left: 00px; min-height: 200px">

						<c:forEach var='row' items="${result.rows }">

							<div class="featurebox">

								<div id="postHeader">
									<div id="username">
										Posted by:<span style="color: red;"><c:out
												value="${row.name}" /> </span>
									</div>

									<div id="date">
										Posted on:<span style="color: red;"><c:out
												value="${row.dop}" /> </span>
									</div>
								</div>
								<hr>
								<p style="color: black;">
									<c:out value="${row.answer}" />
								</p>
							</div>
							</br>
						</c:forEach>
						<form action="SubmitComment.jsp?discussionid=${param.discussionid}" method="post">
							<textarea name="comment" rows="10" cols=135%
								style="margin-left: 40px"></textarea>
							<input type="submit" value="Done" name="act"
								style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 910px; width: 100px; margin-top: 20px">
						</form>
						<br> <br>
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
