<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Examination Portal</title>
</head>
<body>
<%String username=(String)session.getAttribute("username");
String status=(String)session.getAttribute("status");%>
<c:if test="${param.button!='Cancel'}">	
	<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp"/>
	<sql:update dataSource="${snapshot}" var="result">
	update users set password=? where userid=? 
	<sql:param value="${param.newpassword}"/>
	<sql:param value="<%=username%>"/>
	</sql:update>
	
</c:if>
<c:if test="${result!=0}">

<%if(status.equals("Student"))
{
%>
<jsp:forward page="StudentView.jsp"/>
<%} else if(status.equals("Teacher"))
	{
	%>
<jsp:forward page="TeacherView.jsp"/>
<%} 
else if(status.equals("Steno"))
{
%>
<jsp:forward page="StenoView.jsp"/>
<%
}
else
{
%>
<jsp:forward page="Admin.jsp"/>
<%} %>
</c:if>
</body>
</html>