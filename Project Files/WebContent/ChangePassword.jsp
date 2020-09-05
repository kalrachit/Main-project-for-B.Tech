<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="ltr" lang="en-US" class="no-js">
<head>
<meta charset="utf-8">
<title>ERP-E'-DCRUST</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.ui.core.js"></script>
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.ui.position.js"></script>
<script src="js/jquery.ui.menu.js"></script>

<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script>
	$(function() {
		$("#menu").menu();
	});</script>
	<script type="text/javascript">
	function validate_password()
	{ var pass=document.add.newpassword.value;
		if(document.add.newpassword.value!=document.add.cnewpassword.value)
			{
			alert("New Password and Confirm New Password do not match.");
			document.add.cnewpassword.focus();
			return false;
			}}
</script>
<style>
.ui-menu {
	width: 100px;
}
</style>
<script type="text/javascript">

</script>
</head>
<body id="page3">

	<div class="bg">
		<div class="main">
			<div class="row-1">
				<h1>
					ERP-E'-DCRUST <strong class="slog">Making Learning a
						Better Experience</strong>
				</h1>

				<img src="images/DCRUSTLOGO.jpg" height=100px align="right"
					style="margin-right: 40px; margin-top: -7px" />

			</div>
			<div class="contentadmin" style="background: white;">
				<div>
					<div class="padding" align="center">

						<form method="post" action="ChangePassword2.jsp" name="add">




							<section id="content" style="width:984px;margin-right:0px">

							<div class="padding" align="center">
								<div class="wrapper margin-bot">

									<table class="tablemod" style="width: 700px; align: center">
										<tr>
											<td align="center" colspan="4"><h2
													style="color: black; margin-left: 150px">Change
													Password</h2></td>

										</tr>
										<tr>
											<td align="Right" style="color: black">New Password</td>
											<td colspan="2" align="center"><input type="password"
												name="newpassword" id="newpassword" /></td>
										</tr>
										<tr>
											<td align="Right" style="color: black">Confirm New
												Password</td>
											<td colspan="2" align="center"><input type="password"
												name="cnewpassword" id="cnewpassword"
												onchange="return validate_password()" /></td>
										</tr>


										<tr>
											<td><input type="submit" value="Change" name="button"
												style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 150px; width: 110px; margin-top: 20px"
												onclick="return (validate())" /></td>
											<td colspan="4"><input type="submit" value="Cancel"
												name="button"
												style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 200px; width: 110px; margin-top: 20px"></td>
											<td></td>
										</tr>
									</table>

								</div>

							</div>

							</section>
						</form>

					</div>
				</div>
			</div>
		</div>
</body>
</html>
