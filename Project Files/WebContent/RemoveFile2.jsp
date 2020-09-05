<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String str = "C:/Major project/ERP/Source Code/New/WebContent/uploaddata/";
		String tmp = request.getParameter("delete");
		String des = "";
		for (int i = 0; i < tmp.length(); i++) {
			if (tmp.charAt(i) == '%') {
				des += ' ';
				i += 2;
			} else
				des += tmp.charAt(i);
		}
		str += des;
		File f = new File(str);
		if (f.delete()) {
			/* out.println("Sucessfully deleted file"); */
	%>
	<script type="text/javascript">
		alert("Successfully Deleted.")
	</script>
	<%if(session.getAttribute("status").toString().equals("Teacher"))
		{%>
	<jsp:forward page="TeacherAcademics.jsp" />
	<%
		} 
	else if(session.getAttribute("status").toString().equals("Steno")){
	%>
	<jsp:forward page="ContentManagement.jsp"/>
	<%} }
		else
			out.println("Error in deleting file");
	%>

</body>
</html>