<%@ page language="java" pageEncoding="ISO-8859-1" contentType="text/html;charset=ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

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
<%String name=session.getAttribute("username").toString(); %>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp" />
<sql:query dataSource="${snapshot}" var="result">
Select distinct subject,subjectid,year from subjects join student on subjects.year=student.csem where status='Active' and rollno=?
<sql:param value="<%=name %>"/>
</sql:query>

<script type="text/javascript">
function selectLevel()
{
	var xmlhttp;
	 var k=document.getElementById("subjectid").value;
	 if(k=="C++")
		 {
		 k="Cpp";
		 }
	 var urls="LevelSelection.jsp?ve="+k;
	 if (window.XMLHttpRequest)
	   {
	   xmlhttp=new XMLHttpRequest();
	   }
	 else
	   {
	   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	   }
	 xmlhttp.onreadystatechange=function()
	   {
	   if (xmlhttp.readyState==4)
	     {
	         //document.getElementById("err").style.color="red";
	         	document.getElementById("extra").style.display="none";
	        	 document.getElementById("list").innerHTML=xmlhttp.responseText;
	        
	     }
	   }
	 xmlhttp.open("GET",urls,true);
	 xmlhttp.send();
}
	function validate()
		{
			if(document.add.subjectid.value=="-1")
		{
		alert("Please select the subject ");
		document.add.course.focus();
		return false;
		}
			if(document.add.level.value=="-1")
			{
			alert("Please select the level ");
			document.add.course.focus();
			return false;
			}
			if(document.add.no.value<0||document.add.no.value>20)
			{
			alert("No. of questions must lie between 1 to 20");
			document.add.no.focus();
			return false;
			}
			if(document.add.time.value=="")
			{
			alert("Please enter a time limit");
			document.add.no.focus();
			return false;
			}
		}

</script>
</head>
<body id="page3">

<div class="bg">
	<div class="main">
		<div class="row-1">
			<h1>
				ERP-E'-DCRUST <strong class="slog">Making Learning a better Experience</strong>
			</h1>
			
						<img src="images/DCRUSTLOGO.jpg" height=100px align="right" style="margin-right:40px;margin-top:-7px"/>
						
		</div>
		<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a  href="StudentView.jsp">Home Page</a></li>
							<li><a class="active" href="StudentAcademicsljsp">Academics</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="DownloadFile.jsp">Downloads</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
						</ul>
					</nav>
				</div>
		<div class="contentadmin" style="background: white;">
			<div>
			<br>
				<div class="padding" align="center">
					
						<form method="post" action="TakeTest.jsp" name="add" >




							<section id="content" style="width:984px;margin-right:0px">
							
								<div class="padding" align="center">
									<div class="wrapper margin-bot">
									
										<table class="tablemod" style="width: 700px">
											<tr>
												<td align="center" colspan="4"><h2 style="color:black;margin-left:150px">Take Test</h2></td>
																						
											</tr>
											
											<tr>
												<td align="Right" style="color:black">Select Subject</td>
												<td colspan="2" align="center">
												<select name="subjectid" id="subjectid" onmouseup="selectLevel()">
												<option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												<c:forEach var="row" items="${result.rows}">
												<option value="${row.subjectid}">${row.subject}</option>
												</c:forEach>
												</select>
												</td>
												
											</tr>
											<tr>

												<td align="Right"  style="color:black">Select Level</td>
												<td colspan="2" align="center">
												<div id="extra"><select><option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
												</select></div>
												<span id="list"></span>
												</td>
											</tr>		
											<tr>
												<td align="Right"  style="color:black">No. of Questions</td>
												<td colspan="2" align="center"><input type="text" name="no" width="20px"/></td>
											</tr>
											<tr>
												<td align="Right"  style="color:black">Time Limit(in minutes)</td>
												<td colspan="2" align="center"><input type="text" name="time" width="20px"/></td>
											</tr>

											
											<tr>
												<td> <input type="submit" value="TEST" name="action" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 150px;width:100px;margin-top:20px" onclick="return (validate())"/></td>
												<td colspan="4"><input type="submit" value="CANCEL" name="action" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left: 200px;width:120px;margin-top:20px"></td>
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
