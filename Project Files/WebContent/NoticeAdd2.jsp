<%@page import="com.sun.org.apache.xalan.internal.xsltc.runtime.Parameter"%>
<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="ltr" lang="en-US" class="no-js">
<head>
<meta charset="utf-8">
<title>ERP-E'-DCRUST</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.ui.core.js"></script>
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.ui.position.js"></script>
<script src="js/jquery.ui.menu.js"></script>

<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">

<style>
.ui-menu {
	width: 100px;
}
</style>

</head>
<body id="upload">

	<div class="bg">
		<div class="main">
			<div class="row-1">
				<h1>
					ERP-E'-DRCUST <strong class="slog">Making Learning a
						Better Experience</strong>
				</h1>

				<img src="images/DCRUSTLOGO.jpg" height=100px align="right"
					style="margin-right: 40px; margin-top: -7px" />

			</div>
			<div class="contentadmin" style="background: white;">
				<div>
					<div class="padding" align="center">

						<div class="padding" align="center">
							<div class="wrapper margin-bot">

								<table class="tablemod" style="width: 700px; align: center">
									<tr>
										<td align="center" colspan="4"><h2
												style="color: black; margin-center: 150px">Attaching
												Files</h2></td>
									</tr>
								</table>
							</div>
						</div>




						<%!String fname;%>
						<%!String values[] = new String[8];%>
						<%!int counter = 0;%>

						<%
						String s="";
						
// 						out.println("problem1");
// 							File file = null;
// 							int maxFileSize = 5000 * 1024;
// 							int maxMemSize = 5000 * 1024;
// 							ServletContext context = pageContext.getServletContext();
// 							String filePath = "F:/Source Code/ERPDcrust2/WebContent/notice/";
// 							// Verify the content type
// 							String contentType = request.getContentType();
// 							if ((contentType.indexOf("multipart/form-data") >= 0)) {
// 								out.println("problem2");
// 								String name,desc;
// 								//name=request.getInputStream("title");
// 								desc=request.getParameter("description");

// 								DiskFileItemFactory factory = new DiskFileItemFactory();
// 								// maximum size that will be stored in memory
// 								factory.setSizeThreshold(maxMemSize);
// 								// Location to save data that is larger than maxMemSize.
// 								factory.setRepository(new File("F:/Source Code/ERPDcrust2/WebContent/notice/"));
// 								System.out.println("here");
// 								// Create a new file upload handler
// 								ServletFileUpload upload = new ServletFileUpload(factory);
// 								// ma   ximum file size to be uploaded.
// 								upload.setSizeMax(maxFileSize);
// 								try {
// 									System.out.println("entered try");
// 									// Parse the request to get file items.
// 									List fileItems = upload.parseRequest(request);

// 									// Process the uploaded file items
// 									Iterator i = fileItems.iterator();

// 									out.println("<title>JSP File upload</title>");

// 									while (i.hasNext()) {
// 										FileItem fi = (FileItem) i.next();
// 										if (!fi.isFormField()) {
// 											// Get the uploaded file parameters
// 											String fieldName = fi.getFieldName();
// 											String fileName = fi.getName();
// 											boolean isInMemory = fi.isInMemory();
// 											long sizeInBytes = fi.getSize();
// 											// Write the file
// 											if (fileName.lastIndexOf("\\") >= 0) {
// 												file = new File(filePath
// 														+ fileName.substring(fileName
// 																.lastIndexOf("\\")));
// 											} else {
// 												file = new File(filePath
// 														+ fileName.substring(fileName
// 																.lastIndexOf("\\") + 1));
// 											}
// 											fi.write(file);
// 											out.println("Uploaded Filename: " + filePath
// 													+ fileName + "<br>");
// 											System.out.println(filePath);
// 											fname = filePath + fileName;
// 											System.out.println("File Name : " + fname);

// 										}
// 										if (fi.isFormField()) {
// 											values[counter] = fi.getString();
// 											counter++;

// 										}
// 									}
									
									
// 									counter = 0;
// 									out.println(name+"67 "+desc);								
%>
									<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:oracle" user="erp" password="erp"/>
									
									<sql:update dataSource="${snapshot}" var="result">
									Insert into notice values(noticeid.nextval,'1','Teacher',?,?,'ssssss')
									<sql:param value="${param.title}"/>
									<sql:param value="${param.description}>"/>
									</sql:update>
									
									<c:choose>

									<c:when test="${result!=null }">
									Success
									</c:when>
									<c:otherwise>
									Error
									</c:otherwise>
									</c:choose>
																		
									
									
								<%	
									
// 									try {
// 										Class.forName("oracle.jdbc.driver.OracleDriver");
// 										Connection conn = DriverManager.getConnection(
// 												"jdbc:oracle:thin:@localhost:1521:oracle",
// 												"erp", "erp");
// 										System.out.println("Connection Created");
// // 										PreparedStatement ps = conn
// // 												.prepareStatement("insert into notice values('?','?','?','?','?','?')");
// 										PreparedStatement ps = conn
// 												.prepareStatement("insert into notice values('1','1','Teacher','Student','Yolo','swaggins')");
// 										FileInputStream fin = new FileInputStream(file);

// // 										ps.setString(1, "1");
// // 										ps.setString(2,"1");
// // 										ps.setString(3, "Teacher");
// // 										ps.setString(4, request.getParameter("title"));
// // 										ps.setString(5, request.getParameter("desciption"));
// // 										ps.setString(6, file.toString());
// 										int ii = ps.executeUpdate();
// // 										String query="insert into notice values('";
// 										if (ii != 0) {
// 											out.println("Inserted Succesfully!");

// 										} else {
// 											out.println("Not Inserted");
// 										}

// 									} catch (Exception e) {
// 										e.printStackTrace();
// 										System.out.println(e.toString());
// 									}

// 									out.println("<form action='Index.jsp'><input type='Submit' value='Back'></form></body>");
// 									out.println("</html>");
// 								} catch (Exception ex) {
// 									System.out.println(ex);
// 									System.out.println(ex.toString());

// 								}
// 							}

// 							else {

// 								out.println("<title>Servlet upload</title>");

// 								out.println("<p>No file attached</p>");

// 							}
						%>

						<%-- <jsp:forward page="NoticeBoardView.jsp"></jsp:forward> --%>




					</div>
				</div>
			</div>
		</div>
</body>
</html>
