<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.Random;"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP-E'-DCRUST</title>
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
		System.out.println(str);
	%>
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp" />
	<c:catch var="exception">
		<sql:update var="i" dataSource="${snapshot}">
Insert into student values(?,?,?,?,?,?,?,?,?,?,?)
           <sql:param value="${param.rollno}"></sql:param>
			<sql:param value="${param.name}"></sql:param>
			<sql:param value="${param.fname}"></sql:param>
			<sql:param value="${param.contact}"></sql:param>
			<sql:param value="${param.address}"></sql:param>
			<sql:param value="${param.email}"></sql:param>
			<sql:param value="${param.dob}"></sql:param>
			<sql:param value="${param.yoa}"></sql:param>
			<sql:param value="${param.csem}"></sql:param>
			<sql:param value="${param.gender}"></sql:param>
			<sql:param value="${param.course}"></sql:param>
			
		</sql:update>
	</c:catch>
	<c:if test="${exception != null }"> ${exception }</c:if>
	<c:if test="${i!=null}">
		<sql:update var="j" dataSource="${snapshot}">
Insert into users values(?,?,'Student',?)
<sql:param value="${param.rollno}"></sql:param>
			<sql:param value="<%=str%>"></sql:param>
			<sql:param value="${param.name}" />
		</sql:update>
	</c:if>

	 <c:if test="${param.act eq 'Next'}">
		<jsp:forward page="RegistrationStudent.jsp" />
	</c:if>
	<c:if test="${param.act eq 'Done'}">
		<jsp:forward page="AccountHandling.jsp" /></c:if>
</body>
</html>