<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page5">
	<!-- header -->
	<div class="bg">
		<div class="main">


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
						<li><a href="HomePage.jsp">Home Page</a></li>
						<li><a href="Login.jsp">Login</a></li>
						<li><a class="active" href="NoticeBoard.jsp">Notice Board</a></li>
					</ul>
				</nav>
			</div>
			</header>
			<!-- content -->




			<section id="content" style="width: 1050px">
				<div class="padding">
					<div class="wrapper margin-bot">
						<div class="col-3">
							<div class="indent">
								<h2 class="p0">Notice</h2>
								<sql:setDataSource var="snapshot"
									driver="oracle.jdbc.driver.OracleDriver"
									url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
									password="erp" />
								<sql:query var="result" dataSource="${snapshot}">
									select * from (select * from notice order by noticeid desc) where rownum<3
									</sql:query>
								<form id="contact-form" action="Contact.jsp" method="post">

									<div style="border: 1px solid black; background-color: white;height: 250px"
										align="center">

										<marquee behavior="scroll" direction="up" scrollamount="3"
											scrolldelay="5" onmouseover="this.stop()"
											onmouseout="this.start()">
											<ul
												style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; height: 279px; top: 0px;">
												<c:forEach var="row" items="${result.rows}">
													<li
														style="overflow: hidden; float: none; width: 194px; height: 20px;"><a
														href="ViewNotice.jsp?title=${row.noticeid}">${row.title}</a></li>
												</c:forEach>
											</ul>
										</marquee>


									</div>

								</form>
							</div>
						</div>
						<br /> <br /> <br /> <br /> <br /> <img
							src="images/Notice1.jpg" height=250px align="right"
							style="margin-right: 20px; margin-top: -250px" />

					</div>
				</div>
		</div>
	</div>
	</section>
</body>
</html>
