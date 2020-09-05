<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
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
						<%!String fname;%>
						<%!String values[] = new String[8];%>
						<%!int counter = 0;%>		
						
<%
	File file = null;
	int maxFileSize = 5000 * 1024;
	int maxMemSize = 5000 * 1024;
	ServletContext context = pageContext.getServletContext();
	String filePath = context.getInitParameter("file-upload");

	// Verify the content type
	String contentType = request.getContentType();
	if ((contentType.indexOf("multipart/form-data") >= 0)) {

		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);
		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File("C:/Major project/ERP/Source Code/New/WebContent/uploaddata/"));
System.out.println("here");
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// ma   ximum file size to be uploaded.
		upload.setSizeMax(maxFileSize);
		try {
			System.out.println("entered try");		
			// Parse the request to get file items.
			List fileItems = upload.parseRequest(request);

			// Process the uploaded file items
			Iterator i = fileItems.iterator();

			out.println("<title>JSP File upload</title>");
	
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				if (!fi.isFormField()) {
					// Get the uploaded file parameters
					String fieldName = fi.getFieldName();
					String fileName = fi.getName();
					boolean isInMemory = fi.isInMemory();
					long sizeInBytes = fi.getSize();
					// Write the file
					if (fileName.lastIndexOf("\\") >= 0) {
						file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
					} else {
						file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
					}
					fi.write(file);
					fname = filePath + fileName;
					System.out.println("File Name : " + fname);

				}
				if (fi.isFormField()) {
					values[counter] = fi.getString();
					counter++;

				}
			}
			counter = 0;
			%>
			<script type="text/javascript">
			alert("File Uploaded Successfully.....")
			</script>
			
			<%
		if (session.getAttribute("status").toString()
						.equals("Teacher")) {
	%>
	<jsp:forward page="TeacherAcademics.jsp" />
	<%
		}
		else  if(session.getAttribute("status").toString().equals("Steno")) {
		
	%>
	<jsp:forward page="ContentManagement.jsp"></jsp:forward><%} %>
			</body>
			</html>
		<% } catch (Exception ex) {
			System.out.println(ex);
		
		}
	} 
	
	else {

		out.println("<title>Servlet upload</title>");

		out.println("<p>No file uploaded</p>");

	}
%>





					</div>
				</div>
			</div>
		</div>
</body>
</html>
