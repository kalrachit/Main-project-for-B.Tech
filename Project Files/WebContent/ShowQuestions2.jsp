<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,pack.Questions"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ERP-E'-DCRUST</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function validate()
{
	if(document.form1.res.value=="")
		{
		alert("Please select one of the options");
		return false;
		}
	return true;
}
</script>
</head>
<body>
<%	
	int cnt=Integer.valueOf(session.getAttribute("count").toString());
	int number=Integer.valueOf(session.getAttribute("number").toString());
	++cnt;
	ArrayList<Questions> q=(ArrayList)session.getAttribute("Questions");
	ArrayList<String> a=(ArrayList)session.getAttribute("Answers");
	session.setAttribute("count",cnt);
	a.add(request.getParameter("res"));
	session.setAttribute("Answers",a);
	if(cnt<number){
	%>
              <form action="ShowQuestions2.jsp" name="form1" method="post" onsubmit="return validate()">
                <table style="width: 920px">
                <tr>
                <td>Q.<%=cnt+1 %><%=". "+q.get(cnt).getQuestion() %>
                </td>
                </tr>
                <tr>
              <td><input type="radio" name="res" value="option1"/><%=q.get(cnt).getOption1() %></td></tr>
			 <tr><td><input type="radio" name="res" value="option2"/><%=q.get(cnt).getOption2() %></td></tr>
			 <tr><td><input type="radio" name="res" value="option3"/><%=q.get(cnt).getOption3() %></td></tr>
			 <tr><td><input type="radio" name="res" value="option4"/><%=q.get(cnt).getOption4() %></td></tr>
			  </table>
			  <table><tr>
				<td> 
				<%
				if(cnt<number-1){ 
				%>
				<input type="submit" name="act" value="SAVE & NEXT" style="align:left;display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;width:160px;margin-top:20px" onclick="return (validate())"/>
		     	<%
		     	}
				else
				{
				%>
				<input type="submit" name="act" value="SAVE" style="align:left;display:inline-block;font-size:19px;line-height:1.21em;letter-spacing:-1px;color:#fefefe;padding:9px 20px 11px;background:url(../images/button-tail.gif) 0 0 repeat-x #3c3c3c;border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;width:100px;margin-top:20px" onclick="return (validate())"/>
		     	<%
		     	}
				%>
				</td>
		     </tr>
			 </table>
			 </form>
	<%
		 }
	else
	{
	%>
	<a target="_top" href="ViewResult.jsp" style="color:green">Test Ends!!! Click to see the Result </a>
	<% 
	}
	%>
	</body>
</html>