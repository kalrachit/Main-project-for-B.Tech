<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP-E'-DCRUST</title>
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
</head>
<body id="page2">

	<!-- header -->
	<div class="bg">
		<div class="main">
			<div class="row-1">
        <h1>ERP-E'-DCRUST <strong class="slog">Making learning a better experience</strong> </h1>
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
			<div class="contentadmin" style="background: white;min-height: 300px;">
			<section id="content">
			
				<div>
					<h2 align="center"><u>History</u></h2>
					
					
				<div>
				<div><pre>     </pre></div>
				<% 
				try 
			      { 
					int id=0;
			         Connection conn=(Connection)application.getAttribute("DatabaseConnection");
			         PreparedStatement ps=conn.prepareStatement("select * from history where userid=?");
			         ps.setString(1,(String)session.getAttribute("username"));
			         ResultSet rs=ps.executeQuery();
			         %>
			         <center>
			         <table border="1" width="900px">
			         <tr></tr>
			         <tr>
			         <td align="center" style="font-size: large;color: maroon;width: 20px"><b>S.No.</b></td>
			         <td align="center" style="font-size: large;color: maroon;width:100px"><b>Subject</b></td>
			         <td align="center" style="font-size: large;color: maroon;width:100px"><b>Level</b></td>
			         <td align="center" style="font-size: large;color: maroon;width:50px"><b>Year</b></td>
			          <td align="center" style="font-size: large;color: maroon;width:100px"><b>Date Of Test</b></td>
			           <td align="center" style="font-size: large;color: maroon;width:100px"><b>Score</b></td>
			         </tr>
			        <% while(rs.next())
			         {
			        	
			        	 %>
			        	 <tr style="margin-bottom:100px">
			        	  <td align="center" style="width: 20px"><font color=Black><%=++id%></font></td>
			        	  <td align="center" style="width: 100px"><font color=Black><%=rs.getString(2)%></font></td>
			        	  <td align="center" style="width: 100px"><font color=Black><%= rs.getString(3)%></font></td>
			        	  <td align="center" style="width: 50px"><font color=Black><%= rs.getString(4)%></font></td>
			        	  <td align="center" style="width: 100px"><font color=Black><%= rs.getString(6)%></font></td>
			        	  <td align="center" style="width: 100px"><font color=Black><%= rs.getString(5)%></font></td>
			        	  
			        	  </tr>
			         <%
			         }
			         %>
			         </table>
			         </center>
			       
			      <%
			      }
				catch(Exception e)
				{
					out.println("Error in Connectivity"+e);
				}
				
				
				
				
				
				
				
				%></div>
					

				</div>
			
			</section></div>
		</div>
	</div>
	
</body>
</html>