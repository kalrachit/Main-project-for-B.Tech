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
				<div class="contentadmin" style="background: white;min-height:300px">
			<div>
				<div class="padding" align="center">
					
						<form method="post" action="SelectAccountView2.jsp" name="delete1" >




							<section id="content" style="width:984px;margin-right:0px;">
							
								<div class="padding" align="center">
									<div class="wrapper margin-bot">
									
										<table class="tablemod" style="width: 700px;align:center;margin-top:50px" border="0">
											<tr>
												<td align="center" colspan="4"><h2 style="color:black;margin-left:80px">Select Account Type</h2></td>
																						
											</tr>
											
											<tr>
												<td colspan="4" align="Center"><select name="type">
												<option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												<option value="Student">Student</option>
												<option value="Teacher">Teacher</option>
												<option value="Steno">Non-Teaching</option>
												</select>
												</td>
												
											<tr>
												<td colspan="3" align="Center"> <input type="submit" value="Proceed" name="button" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 190px;width:120px;margin-top:20px" onclick="return (validate())"/></td>
												<td></td>
											</tr>
											</table>
											
		</div>									
											
      </div>
     
    </section>
</form></div>

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



