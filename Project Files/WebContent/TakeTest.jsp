<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
  
   
<!DOCTYPE html>
<html>
<head>
<title>ERP-E'-DCRUST</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
 <script type="text/javascript" >
        var tim;
       
        var min =${param.time};
        var sec = 0;
        
        function f2() {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                if(parseInt(min)==0)
                {
                document.getElementById("showtime").innerHTML = "Time Left : " + sec+" Seconds";
                }
                else
               	{
                	document.getElementById("showtime").innerHTML = "Time Left : "+min+" Minutes, " + sec+" Seconds";	
               	}
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0) {
                    //
                    if (parseInt(min) == 0) {
                        //clearTimeout(tim);
                        location.href = "ViewResult.jsp";
                    }
                    else {
                    	min = parseInt(min) - 1;
                        sec = 59;
                        if(parseInt(min)==0)
                        {
                        document.getElementById("showtime").innerHTML = "Time Left : " +sec+" Seconds";
                        }
                        else
                        {
                        	 document.getElementById("showtime").innerHTML = "Time Left : "+min+" Minutes, " + sec+" Seconds";
                        }
                        tim = setTimeout("f2()", 1000);
                    }
                }
               
            }
        }
        //this code handles the F5/Ctrl+F5/Ctrl+R
        document.onkeydown = checkKeycode
        function checkKeycode(e) {
        	 var keycode;
            keycode = e.which;

           if ($.browser.msie) {
                if (keycode == 116 || (window.event.ctrlKey && keycode == 82)) {
                    window.event.returnValue = false;
                    window.event.keyCode = 0;
                    window.status = "Refresh is disabled";
                    location.href="StudentView.jsp";
                }
            }
            else{
            	 if (keycode == 116 ||(e.ctrlKey && keycode == 82)) {
                     if (e.preventDefault)
                     {
                         e.preventDefault();
                         e.stopPropagation();
                         location.href="StudentView.jsp";
                     }
                 }
            }
        }
    </script>
</head>
<body id="page5" onload="f2()">

<!-- header -->

<c:if test="${param.action=='CANCEL'}"><jsp:forward page="StudentView.jsp" /></c:if>
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

    <!-- content -->
    
 <section id="content">
      <div class="padding">
        <div class="wrapper margin-bot">
           <div class="col-6">
           <form id="form1" method="post" runat="server">
    <div>
      <table width="100%" align="center">
        <tr>
          <td colspan="2">
            <h2>TIME</h2>
          </td>
          </tr>
        <tr>
          <td>
            <div id="showtime" style="font-size: large;"></div>
          </td>
        </tr>
       </table>
      
 
   
 
    </div>
    </form>
          </div>
          <div class="col-5">
           <form action="ViewResult.jsp">
           <table>
              <td><h2 class="p0">Test</h2></td>
              <td><input type="submit" name="act" value="DONE" style="display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;width:107px;margin-top:20px" onclick="return (validate())"/></td>
				</td>
				</table>
				</form>
				<%session.setAttribute("subjectid",request.getParameter("subjectid"));
				session.setAttribute("number",request.getParameter("no"));
				session.setAttribute("level",request.getParameter("level"));
				%>
<iframe src="FetchQuestions.jsp?quiz=<%=request.getParameter("level")%>" scrolling="auto" width="100%" height="300px" >
</iframe>

            </div>
          
          
         
          </div>
        </div>

</section>
</div>
</div>
</body>
</html>



  