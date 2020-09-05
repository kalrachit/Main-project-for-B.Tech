<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.sql.PreparedStatement,java.util.*" import="pack.Questions"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP-E'-DCRUST</title>
</head>
<body>
<%	int questionid;
    String question,option1,option2,option3,option4,answer;
	ArrayList<Questions> al=new ArrayList<Questions>();
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","erp","erp");
	PreparedStatement ps=conn.prepareStatement("Select questionid,question,option1,option2,option3,option4,answer from questions where subjectid=? and quiz=?");
	ps.setString(1,(String)session.getAttribute("subjectid"));
	ps.setString(2,(String)session.getAttribute("level") );
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		questionid=Integer.valueOf(rs.getString(1));
		question=rs.getString(2);
		option1=rs.getString(3);
		option2=rs.getString(4);
		option3=rs.getString(5);
		option4=rs.getString(6);
		answer=rs.getString(7);
		Questions q=new Questions(questionid,question,option1,option2,option3,option4,answer);
		al.add(q);
	}
	Collections.shuffle(al);
	session.setAttribute("Questions",al);
	session.setAttribute("count",-1);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
<jsp:forward page="ShowQuestion.jsp"/>

</body>
</html>