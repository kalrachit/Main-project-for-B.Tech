<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,pack.Questions,java.text.*,java.sql.*,java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Result</title>
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
.ui{
	margin-left:70px ;
}
.wi{
	width:0.5cm;
}
.re{
width:2cm;
}
.view{
margin-right:90px;
color: captiontext;
}



</style>
</head>
<body id="page3">
<%String name=session.getAttribute("username").toString(); %>
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp" />
<sql:query dataSource="${snapshot}" var="result">
Select csem from student where rollno=?
<sql:param value="<%=name %>"/>
</sql:query>
<c:forEach var="row" items="${result.rows}">
<c:set var="year" value="${row.csem}"></c:set>
</c:forEach>
<div class="bg">
	<div class="main">
		<div class="row-1">
			<h1>
				ERP-E'-DCRUST <strong class="slog">Making Learning a better experience</strong>
			</h1>
			
						<img src="images/DCRUSTLOGO.jpg" height=100px align="right" style="margin-right:40px;margin-top:-7px"/>
						
		</div>
		<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a  href="StudentView.jsp">Home Page</a></li>
							<li><a class="active" href="StudentAcademics.jsp">Academics</a></li>
							<li><a href="DiscussionForumView.jsp">Discussion Forum</a></li>
							<li><a href="DownloadFile.jsp">Downloads</a></li>
							<li><a href="ChangePassword.jsp">Account Settings</a></li>
						</ul>
					</nav>
				</div>
		
		<div class="contentadmin" style="background: white;">
			<div>
			<%	int correct_answers=0;
			
				SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
				String date = sdf.format(new Date());
						ArrayList<Questions> q=(ArrayList)session.getAttribute("Questions");
						ArrayList<String> a=(ArrayList)session.getAttribute("Answers");
						ArrayList<String> result=new ArrayList<String>();
						int count=Integer.valueOf(session.getAttribute("count").toString());
						int number=Integer.valueOf(session.getAttribute("number").toString());
						for(int i=0;i<count;i++)
							{
							String str1=q.get(i).getAnswer();
							String str2=a.get(i);
								if(str1.equals(str2))
								{
								result.add("Correct");
								correct_answers++;
								}
								else
								{
								result.add("Incorrect");
								}
							}
						String userid=(String)session.getAttribute("username");
					     String subjectid=(String)session.getAttribute("subjectid");
					      String level=(String)session.getAttribute("level");
					       
					        String marks=""+(correct_answers*100)/number+" %";
					         
					         
												 
						
					%>
					<sql:update var="i" dataSource="${snapshot }">
					insert into history values(?,?,?,?,?,?)
					<sql:param value="<%=userid %>"/>
					<sql:param value="<%=subjectid %>"/>
					<sql:param value="<%=level %>"/>
					<sql:param  value="${year}"/>
					<sql:param value="<%=marks %>"/>
					<sql:param value="<%=date %>"/>
				
					</sql:update>
				<h2 align="center">
					<u>Result</u></h2>
					<div class="ui">
					
						<b><i><u style="color:red;">
							Score :
							<span style="color:green;"><%=(correct_answers*100)/number %>%</span>
						</u></i></b>
						<a href="StudentView.jsp" class="view" style="margin-left:882px" >Home</a>
						<br>
						<b><i><u style="color:red;">
							Correct Answers :
							<span style="color:green"><%=correct_answers%></span>
						</u></i></b>
						<br>
						<b><i><u style="color:red;">
							No. of Attempted Questions :
							<span style="color:green"><%=count%> out of <%=number %></span>
						</u></i></b>
					<br>
					<br>
					<table style="width:920px " border="1">
						<tr>
						<td class="wi" style="color:maroon;font-size: large;">Q.No.</td>
						<td style="color:maroon;font-size: large;">Question</td>
						<td class="re" style="color:maroon;font-size: large;">Result</td>
						
						</tr>  
					<%for(int i=0;i<count;i++)
						{
						 %>
						<tr>
						<td class="wi" style="color:black"><%=i+1 %></td>
						<td  style="color:black"><%=q.get(i).getQuestion() %></td>
						<td class="re" style="color:black"><%=result.get(i) %>
						</tr>
						<%  }%>
						</table>
						<br>
						</div>
			</div>

			</div>
		</div>
</div>
</body>
</html>
