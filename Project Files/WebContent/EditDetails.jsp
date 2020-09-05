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
	<sql:setDataSource var="snapshot"
									driver="oracle.jdbc.driver.OracleDriver"
									url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
									password="erp" />
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
							<li><a href="DiscussionForum.jsp">Discussion Forum</a></li>
							<li><a href="#">Notice Board</a></li>
						</ul>
					</nav>
				</div>
				<div class="contentadmin" style="background: white;">
					<div>
						<br>
						<br>
						<section id="content" style="margin-left:30%;width:50%">

			<c:if test="${param.id gt 10000}">
			<sql:query var="result" dataSource="${snapshot }">
			select rollno,student.name as name,fname,address,dob,yoa,csem,contact,gender,email,course,password from student join users on student.rollno=users.userid where rollno=?
			<sql:param value="${param.id}"></sql:param>
			</sql:query>
								<form action="EditDetailsStudent.jsp" name="add" method="post">
			         
				<div>
					<h2 align="center" style="margin-left:-80px">Edit Details</h2>
					
					
				<div>
				
			         <center>
			         <table  width="500px" style="margin-left:-100px">
			         <tr></tr>
			        <c:forEach var="row" items="${result.rows}">
			        	 <tr>
			        	 <td align="center" style="color:green;font-size: medium;">Roll No</td>
			        	  <td align="center"><input type="text" name="rollno" value="${row.rollno }" disabled="disabled"/>
			        	  <input type="hidden" name="rollno" value="${row.rollno}"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Password</td>
			        	  <td align="center"><input type="text" name="password" value="${row.password }"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Name</td>
			        	  <td align="center"><input type="text" name="name" value="${row.name }"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Father's Name</td>
			        	  <td align="center"><input type="text" name="fname" value="${row.fname}"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Email Id</td>
			        	  <td align="center"><input type="text" name="email" value="${row.email }"placeholder="example@domain.com"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Date Of Birth</td>
			        	  <td align="center" ><input type="text" name="dob" value="${row.dob }" placeholder="DD-MM-YYYY"/></font></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Gender</td>
			        	  <td align="center"><select name="gender" style="width:174px">
			        	  <option value="Male">Male</option>
			        	  <option value="Female">Female</option></select></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Phone No.</td>
			        	  <td align="center"><input type="text" name="contact" value="${row.contact }"/></td>
			        	  </tr>
			        	  <tr>
			        	  <td align="center"style="color:green;font-size: medium;">Address</td>
			        	  <td align="center"><input type="text" name="address" value="${row.address}"/></td>
			        	  </tr>
			        	  <tr>
			        	  <td align="center"style="color:green;font-size: medium;">Course</td>
			        	  <td align="center"><input type="text" name="course" value="${row.course}"/></td>
			        	  </tr>
			        	  <td align="center"style="color:green;font-size: medium;">Year of Admission</td>
			        	  <td align="center"><input type="text" name="yoa" value="${row.yoa}"/></td>
			        	  </tr>
			        	  <tr>
			        	  <td align="center"style="color:green;font-size: medium;">Current Year</td>
			        	  <td align="center"><input type="text" name="csem" value="${row.csem}"/></td>
			        	  </tr>
			        	  <tr>
			         <td> <input type="submit" value="Update" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left:100px;width:100px;margin-top:20px" onclick="return validate()"/></td>
					 <td> <input type="Reset" value="Reset" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left:100px;width:100px;margin-top:20px"/></td>
					 							
					 </tr>							
			         
			         </c:forEach>
			         </table>
			       
			       </center>
			      
				</div>
					

				</div>
			  </form></c:if>
			  <c:if test="${param.id lt 10000}">
			<sql:query var="result" dataSource="${snapshot }">
			select staffid,staff.name as name,address,email,dob,qualification,gender,contact,staff.status as status,password from staff join users on staff.staffid=users.userid where staffid=?
			<sql:param value="${param.id}"></sql:param>
			</sql:query>
								<form action="EditDetailsTeacher.jsp" name="add" method="post">
			         
				<div>
					<h2 align="center" style="margin-left:-80px">Edit Details</h2>
					
					
				<div>
				
			         <center>
			         <table  width="500px" style="margin-left:-100px">
			         <tr></tr>
			        <c:forEach var="row" items="${result.rows}">
			        	 <tr>
			        	 <td align="center" style="color:green;font-size: medium;">Staff Id</td>
			        	  <td align="center"><input type="text" name="staffid" value="${row.staffid }" disabled="disabled"/>
			        	  <input type="hidden" name="staffid" value="${row.staffid}"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Password</td>
			        	  <td align="center"><input type="text" name="password" value="${row.password }"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Name</td>
			        	  <td align="center"><input type="text" name="name" value="${row.name }"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Qualification</td>
			        	  <td align="center"><input type="text" name="qualification" value="${row.qualification}"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Email Id</td>
			        	  <td align="center"><input type="text" name="email" value="${row.email }"placeholder="example@domain.com"/></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Date Of Birth</td>
			        	  <td align="center" ><input type="text" name="dob" value="${row.dob }" placeholder="DD-MM-YYYY"/></font></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Gender</td>
			        	  <td align="center"><select name="gender" style="width:174px">
			        	  <option value="Male">Male</option>
			        	  <option value="Female">Female</option></select></td>
			        	  </tr>
			        	  <tr>
			        	 <td align="center"style="color:green;font-size: medium;">Phone No.</td>
			        	  <td align="center"><input type="text" name="contact" value="${row.contact }"/></td>
			        	  </tr>
			        	  <tr>
			        	  <td align="center"style="color:green;font-size: medium;">Address</td>
			        	  <td align="center"><input type="text" name="address" value="${row.address}"/></td>
			        	  </tr>
			        	  <tr>
			        	  <td align="center"style="color:green;font-size: medium;">Status</td>
			        	  <td align="center"><input type="text" name="status" value="${row.status}"/></td>
			        	  </tr>
			        	  <tr>
			         <td> <input type="submit" value="Update" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left:100px;width:100px;margin-top:20px" onclick="return validate()"/></td>
					 <td> <input type="Reset" value="Reset" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;margin-left:100px;width:100px;margin-top:20px"/></td>
					 							
					 </tr>							
			         
			         </c:forEach>
			         </table>
			       
			       </center>
			      
				</div>
					

				</div>
			  </form></c:if>
</section>								</div>
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


