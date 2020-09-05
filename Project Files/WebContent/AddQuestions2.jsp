<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP-E'-DCRUST</title>
</head>
<body>
<c:if test="${param.act!='CANCEL'}">	
	<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp"/>
	<sql:query var="result1" dataSource="${snapshot}">
	select distinct subject from subjects where subjectid=?
	<sql:param value="${param.subjectid }"></sql:param>
	</sql:query>
	<c:forEach var="row" items="${ result1.rows}">
	<c:set value="${row.subject }" var="subject"></c:set>
	</c:forEach>
	<sql:update dataSource="${snapshot}" var="result">
	Insert into questions values(?,?,?,?,?,?,?,?,?,?)
	<sql:param value="${param.subjectid}"/>
	<sql:param value="${subject}"/>
	<sql:param value="${param.level}"/>
	<sql:param value="${param.questionid}"/>
	<sql:param value="${param.question}"/>
	<sql:param value="${param.option1}"/>
	<sql:param value="${param.option2}"/>
	<sql:param value="${param.option3}"/>
	<sql:param value="${param.option4}"/>
	<sql:param value="${param.answer}"/>
	</sql:update>
	<c:if test="${param.act=='NEXT'}">
	<jsp:forward page="AddMultipleQuestions.jsp"/>
	</c:if>
	
</c:if>
<jsp:forward page="TeacherAcademics.jsp"/>
</body>
</html>