<%@ page language="java" contentType="text/html;" import="java.sql.*;"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERP-E'-DCRUST</title>
</head>
<body>
	<%
		String n = request.getParameter("c");
		String l = request.getParameter("l");
		if (n.equals("Cpp")) {
			n = "C++";
		}
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager
					.getConnection(
							"jdbc:oracle:thin:@localhost:1521:oracle",
							"erp", "erp");
			PreparedStatement ps = con
					.prepareStatement("select questionid from questions where subjectid=? and quiz=?");
			ps.setString(1, n);
			ps.setString(2, l);
			ResultSet rs = ps.executeQuery();
			out.println("<select name='questionid'><option value='-1'>Select&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>");
			while (rs.next()) {
				out.println("<option value='" + rs.getString(1) + "'>"
						+ rs.getString(1) + "</option>");
			}
			out.println("</select");
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>