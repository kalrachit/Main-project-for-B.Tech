<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<header>
				<div class="row-1">
					<h1>
						ERP-E'-DCRUST <strong class="slog">Making Learning a
							Better Experience</strong>
					</h1>
					<img src="images/DCRUSTLOGO.jpg" height=100px align="right"
						style="margin-right: 40px; margin-top: -7px" />
				</div>
			</header>


			<section id="content" style="width: 1050px">
				<div class="padding">
					<div class="wrapper margin-bot">
						<div class="col-3">
						<form id="contact-form" action="NoticeAdd2.jsp" method="GET">
						
							<div class="indent">
								<h2 class="p0">Add Notice</h2>
								
									<label><span class="text-form">Title:</span> <input
										type="text" name="title" maxlength="25" required
										style="margin-left: 50px;"> </label>
									<div class="wrapper">
										<!--                   		  <label><span class="text-form"style="margin-left:0px;">Select:</span> -->
										<!--                     	 <input type="file" name="file" size="100" style="margin-left:50px;"/> -->
										<!--                   		 </label> -->
										<div class="text-form">Description:</div>
										<textarea name="description" style="margin-left: 50px;"></textarea>
									</div>
							</div>

							<input type="submit" value="Add" name="button"
								style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 130px; width: 100px; margin-top: 50px">

							</form>
						</div>
					</div>




					<img src="images/NoticeBoard.png"
						style="margin-left: 650px; margin-top: -350px" />

				</div>
		</div>
	</div>
	</section>


</body>
</html>
