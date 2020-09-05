<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP-E'-DCRUST</title>
</head>
<body>
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<sql:query var="result1" dataSource="${snapshot}">
		select subjectid from subjects
		</sql:query>
	<c:forEach var="row" items="${result1.rows}">
		<c:set var="subjectid" value="${row.subjectid }"></c:set>
	</c:forEach>
	<sql:update dataSource="${snapshot}" var="result">
Insert into subjects values(?,?,'Basic',?,'Active',?)
<sql:param value="${subjectid+1}" />
		<sql:param value="${param.subject}" />
		<sql:param value="${param.year}" />
		<sql:param value="${param.description}" />
	</sql:update>
	<sql:update dataSource="${snapshot}" var="result2">
Insert into subjects values(?,?,'Intermediate',?,'Active',?)
<sql:param value="${subjectid+1}" />
		<sql:param value="${param.subject}" />
		<sql:param value="${param.year}" />
		<sql:param value="${param.description}" />
	</sql:update><sql:update dataSource="${snapshot}" var="result3">
Insert into subjects values(?,?,'Difficult',?,'Active',?)
<sql:param value="${subjectid+1}" />
		<sql:param value="${param.subject}" />
		<sql:param value="${param.year}" />
		<sql:param value="${param.description}" />
	</sql:update>

	<c:choose>

		<c:when test="${result!=null }">
			<jsp:forward page="Examination.jsp" />
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>

</body>
</html>