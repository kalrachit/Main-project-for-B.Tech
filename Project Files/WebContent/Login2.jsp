<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ERP-E'-DCRUST</title>
</head>
<body>
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp"
		password="erp" />
	<sql:query var="result" dataSource="${snapshot}">
select * from users where userid=? and password=? and status=?
<sql:param value="${param.username}" />
		<sql:param value="${param.password}" />
		<sql:param value="${param.status}" />
	</sql:query>
	<c:forEach var="row" items="${result.rows}">
		<%
			session.setAttribute("username",
						request.getParameter("username"));
				session.setAttribute("status", request.getParameter("status"));
				//Class.forName("oracle.jdbc.driver.OracleDriver"); 
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager
						.getConnection(
								"jdbc:oracle:thin:@localhost:1521:oracle",
								"erp", "erp");
				PreparedStatement ps = con
						.prepareStatement("select name from users where userid=?");
				ps.setString(1, request.getParameter("username"));
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					session.setAttribute("name", rs.getString(1));
				}
				if (request.getParameter("status").equals("Student")) {
		%>
		<jsp:forward page="StudentView.jsp" />
		<%
			} else if (request.getParameter("status").equals("Teacher")) {
		%>
		<jsp:forward page="TeacherView.jsp" />
		<%
			} else if (request.getParameter("status").equals("Steno")) {
		%>
		<jsp:forward page="StenoView.jsp" />
		<%
			} else
		%>
		<jsp:forward page="Admin.jsp?name=${row.name}" />
	</c:forEach>
	<c:set var="status" value="Invalid User Name or Password"
		scope="request" />
	<jsp:forward page="Login.jsp" />

</body>
</html>