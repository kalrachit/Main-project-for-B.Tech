<%@page import="java.util.Random"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registering</title>
</head>
<body>
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<c:catch var="exception">
		<sql:update var="i" dataSource="${snapshot}">
update staff set name=?,qualification=?,contact=?,address=?,email=?,dob=?,status=?,gender=? where staffid=?
           <sql:param value="${param.name}"></sql:param>
			<sql:param value="${param.qualification}"></sql:param>
			<sql:param value="${param.contact}"></sql:param>
			<sql:param value="${param.address}"></sql:param>
			<sql:param value="${param.email}"></sql:param>
			<sql:param value="${param.dob}"></sql:param>
			<sql:param value="${param.status}"></sql:param>
			<sql:param value="${param.gender}"></sql:param>
			<sql:param value="${param.staffid }"></sql:param>
		</sql:update>
	</c:catch>
	<c:if test="${i!=null}">
		<sql:update var="j" dataSource="${snapshot}">
Update users set password=?,status=?,name=? where userid=?
<sql:param value="${param.password}"></sql:param>
<sql:param value="${param.status }"/>
<sql:param value="${param.name}"/>
			<sql:param value="${param.staffid}"></sql:param>
		</sql:update>
	</c:if>

	<jsp:forward page="AccountHandling.jsp" />
</body>
</html>