<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP-E'-DCRUST</title>
</head>
<body>
<c:if test="${param.button eq 'Delete'}">
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp"/>
<sql:update dataSource="${snapshot}" var="result">
delete from subjects where subjectid=?
<sql:param value="${param.subject}"/>
</sql:update>
<c:if test="${result!=null}">
<script type="text/javascript">
alert("Deleted Successully.......");
</script>
</c:if>
</c:if>
<jsp:forward page="Examination.jsp"/>
</body>
</html>