<%@page import="java.util.*,java.text.*"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP-E'-DCRUST</title>
</head>
<body>
	<%
	SimpleDateFormat sdf=new SimpleDateFormat();
		String date = sdf.format(new Date());
		String id=(String)session.getAttribute("username");
		String name=(String)session.getAttribute("name");
	%>
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<c:catch var="exception">
		<sql:update var="i" dataSource="${snapshot}">
Insert into discussion values(did.nextval,?,?,?,?)
           <sql:param  value="<%=id%>"/>
           <sql:param  value="<%=name%>"/>
			<sql:param value="${param.comment}"></sql:param>
           <sql:param value="<%=date %>"></sql:param>
			</sql:update>
	</c:catch>
		
		<%response.sendRedirect("DiscussionForumView.jsp"); %>

</body>
</html>