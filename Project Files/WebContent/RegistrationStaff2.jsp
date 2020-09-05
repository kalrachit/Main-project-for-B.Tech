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
	<%
		StringBuffer buffer = new StringBuffer();
		String characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		int charactersLength = characters.length();
		for (int i = 0; i < 10; i++) {
			double index = Math.random() * charactersLength;
			buffer.append(characters.charAt((int) index));
		}
		String str = buffer.toString();
	%>
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<c:catch var="exception">
		<sql:update var="i" dataSource="${snapshot}">
Insert into staff values(?,?,?,?,?,?,?,?,?)
           <sql:param value="${param.staffid}"></sql:param>
			<sql:param value="${param.name}"></sql:param>
			<sql:param value="${param.contact}"></sql:param>
			<sql:param value="${param.address}"></sql:param>
			<sql:param value="${param.email}"></sql:param>
			<sql:param value="${param.dob}"></sql:param>
			<sql:param value="${param.qualification}"></sql:param>
			<sql:param value="${param.status}"></sql:param>
			<sql:param value="${param.gender}"></sql:param>
		</sql:update>
	</c:catch>
	<c:if test="${i!=null}">
		<sql:update var="j" dataSource="${snapshot}">
Insert into users values(?,?,?,?)
<sql:param value="${param.staffid}"></sql:param>
			<sql:param value="<%=str%>"></sql:param>
			<sql:param value="${param.status}"></sql:param>
		<sql:param value="${param.name }"/>
		</sql:update>
	</c:if>
	<c:if test="${param.act!='Done'}">
		<jsp:forward page="RegistrationStaff.jsp" />
	</c:if>
	<jsp:forward page="AccountHandling.jsp" />

</body>
</html>