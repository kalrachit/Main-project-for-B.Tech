<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ERP-E'-DCRUST</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>

</head>
<body id="page2">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
        <h1>ERP-E'-DCRUST <strong class="slog">Making Learning A Better Experience</strong> </h1>
        <img src="images/DCRUSTLOGO.jpg" height=100px align="right"
						style="margin-right: 40px; margin-top: -7px" />			
      </div>
      <div class="row-2">
        <nav>
          <ul class="menu">
            <li><a href="HomePage.jsp">Home Page</a></li>
            <li><a class="active" href="Login.jsp">Login</a></li>
            <li><a href="NoticeBoard.jsp">Notice Board</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <!-- content -->
    <section id="content" style="height:400px;">
      <div class="padding">
        <div class="wrapper p4">
          <div class="col-1">
            <div class="indent">
		       <p style="color:red"><c:out value="${requestScope['status_register']}" default=" "/></p> 
             <h3 style="color:#05A6E0">COMPUTER SCIENCE DEPARTMENT </h3>
           <br/>
           <font size="4" style="line-height: 30px;"><i><b>
          ERP-E'-DCRUST integrates all the department's processes, students and teachers by <br/>
         streamlining its operation in an efficient manner.The solution enables quick decision<br>
           making at the right time. This aims at helping students save time and get in touch <br/>
          with the department in a better way.<br/>
          
      
      </b>
      </i>
      
      </font>    
	  </div>    
          </div>
         <div class="col-4" style="margin-left:80px " >
          <div class="block-news">
          
                  
         <h3 class="color-4 p2">Log In Here</h3>
         <form action="Login2.jsp" method="post">
                 <table>
         <tr>
         	<td><c:out value="${requestScope.status}" default=" "/></td>
         </tr>

	 	  <tr>
		    <td class="t1">
			Username :<input type="text" name="username">
		    </td>
		  </tr>

		<tr>
		  <td class="t1">
		    Password :<input type="password" name="password">
		  </td>
		</tr>
		<tr>
		    <td class="t1">
			Login as :<select name='status'><option value="-1">Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
			<option value="Student">Student</option>
			<option value="Teacher">Teacher</option>
			<option value="Steno">Steno</option>
			<option value="Admin">Admin</option>			
			</select>
		    </td>
		  </tr>
		
		<tr>
		 <td>
		  <input type="submit" value="Login">
		  <input type="reset" value="Cancel">
	 	</td>
		 </tr>
	
		<tr>
		  <td>
			<a class="imp" href="ForgotPassword.jsp" >Forgot Password?</a>
		 </td>
		</tr>
		
		</table>
		</form>
		</div>
		</div>
		</div>
		</div>
	
         
    </section>
    <!-- footer -->
    
</script>
</body>
</html>
