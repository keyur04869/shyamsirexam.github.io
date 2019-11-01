<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
out.println("<script type=\"text/javascript\">");
out.println("alert('Select Ok To Logout The Current Seesion');");
out.println("location='logout1.jsp';");
out.println("</script>"); 
           
        %>
       
       
</body>
</html>