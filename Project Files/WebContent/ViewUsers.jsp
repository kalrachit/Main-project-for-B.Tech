<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*;"%>

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
							<li><a href="StenoView.jsp">Home Page</a></li>
							<li><a class="active" href="AccountHandling.jsp">Account Handling</a></li>
							<li><a href="ContentManagement.jsp">Content Management</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="#">Notice Board</a></li>
						</ul>
					</nav>
				</div>
				<div class="contentadmin"
					style="background: white; min-height: 300px;">
					<section id="content">

						<div>
							<h2 align="center">
								<u>Users List</u>
							</h2>

							<div>
								<div>
									<pre>     </pre>
								</div>
								<sql:setDataSource var="snapshot"
									driver="oracle.jdbc.driver.OracleDriver"
									url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
									password="erp" />

								<%
									int id = 0;
								%>
								<c:if test="${param.type!='Student'}">
									<c:catch var="exception">
										<sql:query var="result" dataSource="${snapshot}">
											select staffid as id,name from staff where status=? order by staffid
											<sql:param value="${param.type}"></sql:param>
										</sql:query>
									</c:catch>
								</c:if>
								<c:if test="${param.type eq 'Student' }">
									<c:catch var="exception">
										<sql:query var="result" dataSource="${snapshot}">
											select rollno as id,name from student where csem=? order by rollno
											<sql:param value="${param.year}"></sql:param>
										</sql:query>
									</c:catch>
								</c:if>
								<center>
									<table border="1" style="width: 90%">
										<tr></tr>
										<tr>
											<td align="center"
												style="font-size: large; color: maroon; width: 10%"><b>S.No.</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 30%"><b>Username</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 30%"><b>Name</b></td>
											<td align="center"
												style="font-size: large; color: maroon; widht: 15%"><b>View
													Details</b></td>
											<td align="center"
												style="font-size: large; color: maroon; width: 15%"><b>Edit
													Details</b></td>
										</tr>
										<c:forEach var="row" items="${result.rows}">
											<tr style="margin-bottom: 100px">
												<td align="center" style="width: 10%"><font color=Black><%=++id%></font></td>
												<td align="center" style="width: 30%"><font color=Black><c:out
															value="${row.id }" /></font></td>
												<td align="center" style="width: 30%"><font color=Black><c:out
															value="${row.name}" /></font></td>
												<td align="center" style="width: 15%"><a
													href="ViewDetails.jsp?id=${row.id }">View</a></td>
												<td align="center" style="width:15%"><a href='EditDetails.jsp?id=${row.id}'>
														Edit</a></td>
											</tr>
										</c:forEach>

									</table>
									<br> <br>
								</center>

							</div>


						</div>

					</section>
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


