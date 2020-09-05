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
							<li><a href="StenoView.jsp">Home Page</a></li>
							<li><a class="active" href="AccountHandling.jsp">Account Handling</a></li>
							<li><a href="ContentManagement.jsp">Content Management</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="#">Notice Board</a></li>
						</ul>
					</nav>
				</div>
				<div class="contentadmin" style="background: white;">
					<div>
						<br> <br>
						<section id="content" style="margin-left: 20%; width: 50%">
						<h2 align="center" style="margin-left: 100px"><u>User Details</u></h2>
							<sql:setDataSource var="snapshot"
								driver="oracle.jdbc.driver.OracleDriver"
								url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
								password="erp" />
							<div>

								<c:if test="${param.id gt 10000 }">
									<c:catch var="exception">
										<sql:query var="result" dataSource="${snapshot}">
											select rollno,student.name as name,fname,address,email,dob,yoa,csem,gender,contact,course,password from student join users on student.rollno=users.userid where rollno=?
											<sql:param value="${param.id}"></sql:param>
										</sql:query>
									</c:catch>

									<center>
										<table border="1" style="border-color: fuchsia;" width="600px">
											<tr></tr>
											<c:forEach var="row" items="${result.rows }">
												<tr>
													<td align="center" style="color: green; font-size: medium;">Roll Number</td>
													<td align="center"><font color=Black><c:out
																value="${row.rollno }" /></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Password</td>
													<td align="center"><font color=Black><c:out value="${row.password}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Name</td>
													<td align="center"><font color=Black><c:out value="${row.name}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Father's Name</td>
													<td align="center"><font color=Black><c:out value="${row.fname}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Email
														Id</td>
													<td align="center"><font color=Black><c:out value="${row.email}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Date
														Of Birth</td>
													<td align="center"><font color=Black><c:out value="${row.dob}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Gender</td>
													<td align="center"><font color=Black><c:out value="${row.gender}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Phone
														No.</td>
													<td align="center"><font color=Black><c:out value="${row.contact}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Address</td>
													<td align="center"><font color=Black><c:out value="${row.address}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Course</td>
													<td align="center"><font color=Black><c:out value="${row.course}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Year of Admission</td>
													<td align="center"><font color=Black><c:out value="${row.yoa}"/></font></td>
												</tr><tr>
													<td align="center" style="color: green; font-size: medium;">Current Year</td>
													<td align="center"><font color=Black><c:out value="${row.csem}"/></font></td>
												</tr>
												
											</c:forEach>
										</table>
									</center>
								</c:if>
								<c:if test="${param.id le 10000 }">
									<c:catch var="exception">
										<sql:query var="result" dataSource="${snapshot}">
											select staffid,staff.name as name,address,email,dob,qualification,gender,contact,password from staff join users on staff.staffid=users.userid where staffid=?
											<sql:param value="${param.id}"></sql:param>
										</sql:query>
									</c:catch>

									<center>
										<table border="1" style="border-color: fuchsia;" width="600px">
											<tr></tr>
											<c:forEach var="row" items="${result.rows }">
												<tr>
													<td align="center" style="color: green; font-size: medium;">Staff Id</td>
													<td align="center"><font color=Black><c:out
																value="${row.staffid }" /></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Password</td>
													<td align="center"><font color=Black><c:out value="${row.password}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Name</td>
													<td align="center"><font color=Black><c:out value="${row.name}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Email
														Id</td>
													<td align="center"><font color=Black><c:out value="${row.email}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Date
														Of Birth</td>
													<td align="center"><font color=Black><c:out value="${row.dob}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Gender</td>
													<td align="center"><font color=Black><c:out value="${row.gender}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Phone
														No.</td>
													<td align="center"><font color=Black><c:out value="${row.contact}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Address</td>
													<td align="center"><font color=Black><c:out value="${row.address}"/></font></td>
												</tr>
												<tr>
													<td align="center" style="color: green; font-size: medium;">Qualification</td>
													<td align="center"><font color=Black><c:out value="${row.qualification}"/></font></td>
												</tr>
												
											</c:forEach>
										</table>
									</center>
								</c:if>
								<br><br>
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


