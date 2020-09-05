<%@ page language="java" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
	});
</script>
<style>
.ui-menu {
	width: 100px;
}
</style>
<sql:setDataSource var="snapshot"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp" />
<sql:query dataSource="${snapshot}" var="result">
Select * from questions where subjectid=? and quiz=? and questionid=?
<sql:param value="${param.subjectid}" />
	<sql:param value="${param.level}" />
	<sql:param value="${param.questionid}" />
</sql:query>
<c:forEach var="row" items="${result.rows}">
	<c:set var="subjectid" value="${row.subjectid}" />
	<c:set var="level" value="${row.quiz}" />
	<c:set var="questionno" value="${row.questionid}" />
	<c:set var="question" value="${row.question}" />
	<c:set var="option1" value="${row.option1}" />
	<c:set var="option2" value="${row.option2}" />
	<c:set var="option3" value="${row.option3}" />
	<c:set var="option4" value="${row.option4}" />
	<c:set var="answer" value="${row.answer}" />
</c:forEach>

<script type="text/javascript">
	function validate() {
		if (document.add.question.value == "") {
			alert("Please add the question");
			document.add.question.focus();
			return false;
		}
		if (document.add.option1.value == "") {
			alert("Please add the Option");
			document.add.option1.focus();
			return false;
		}
		if (document.add.option2.value == "") {
			alert("Please add the Option");
			document.add.option2.focus();
			return false;
		}
		if (document.add.option3.value == "") {
			alert("Please add the Option");
			document.add.option3.focus();
			return false;
		}
		if (document.add.option4.value == "") {
			alert("Please add the Option");
			document.add.option4.focus();
			return false;
		}
		if (document.add.answer.value == "") {
			alert("Please select correct answer");
			document.add.answer.focus();
			return false;
		}

	}
</script>
</head>
<body id="page3">

	<c:if test="${param.button=='Cancel'}">
		<jsp:forward page="TeacherAcademics.jsp" />
	</c:if>
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
					<li><a href="TeacherView.jsp">Home Page</a></li>
					<li><a class="active" href="TeacherAcademics.jsp">Academics</a></li>
					<li><a href="#">Notice Board</a></li>
					<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
					<li><a href="ChangePassword.jsp">Account Settings</a></li>
				</ul>
				</nav>
			</div>

			<div class="contentadmin" style="background: white;">
				<br> <br>
				<div>
					<div class="padding" align="center">
						<form method="post" action="EditQuestions3.jsp" name="add">

							<section id="content" style="width: 984px; margin-right: 0px">

							<div class="padding" align="center">
								<div class="wrapper margin-bot">

									<table class="tablemod" style="width: 700px; align: center">
										<tr>
											<td align="center" colspan="4"><h2
													style="color: black; margin-left: 120px">Edit Questions</h2></td>

										</tr>
										<tr>
											<td align="Center" style="color: Green">Question Number</td>
											<td colspan="2" align="left"
												style="color: black; margin-left: 50px"><input
												type="text" name="questionid" value="${questionno}" disabled />
												<input type="hidden" name="questionid" value="${questionno}" />
												<input type="hidden" name="subjectid" value="${subjectid}" /> <input
												type="hidden" name="level" value="${level}" /></td>

										</tr>

										<tr>
											<td align="center" style="color: Green">Question</td>
											<td colspan="2" align="center"><textarea rows="5"
													cols="50" name="question">${question}</textarea></td>
										</tr>
										<tr>
											<td align="center" style="color: Green">Option 1</td>
											<td colspan="2" align="center"><textarea rows="2"
													cols="50" name="option1">${option1}</textarea></td>
										</tr>
										<tr>
											<td align="center" style="color: Green">Option 2</td>
											<td colspan="2" align="center"><textarea rows="2"
													cols="50" name="option2">${option2}</textarea></td>
										</tr>
										<tr>
											<td align="center" style="color: Green">Option 3</td>
											<td colspan="2" align="center"><textarea rows="2"
													cols="50" name="option3">${option3}</textarea></td>
										</tr>
										<tr>
											<td align="center" style="color: Green">Option 4</td>
											<td colspan="2" align="center"><textarea rows="2"
													cols="50" name="option4">${option4}</textarea></td>
										</tr>
										<tr>
											<td align="center" style="color: Green">Select Correct
												Answer</td>
											<td colspan="2" align="left"><select name="answer">
													<option value="${answer}">${answer}&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
													<option value="option1">Option 1</option>
													<option value="option2">Option 2</option>
													<option value="option3">Option 3</option>
													<option value="option4">Option 4</option>
											</select></td>
										</tr>
										<tr>
											<td><input type="submit" value="Done" name="act"
												style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 150px; width: 100px; margin-top: 20px"
												onclick="return (validate())" /></td>
											<td colspan="4"><input type="submit" value="Cancel"
												name="act"
												style="display: inline-block; font-size: 19px; line-height: 1.21em; letter-spacing: -1px; color: #fefefe; padding: 9px 20px 11px; background: url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c; border-radius: 8px; -moz-border-radius: 8px; -webkit-border-radius: 8px; margin-left: 200px; width: 100px; margin-top: 20px"></td>
											<td></td>
										</tr>

									</table>

								</div>

							</div>

							</section>
						</form>

					</div>
				</div>
			</header>
		</div>
	</div>
</body>
</html>
