<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
         <%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove Student</title>
</head>
<body>
<% 
if(request.getParameter("catid")!=null)
{

	String id=request.getParameter("catid");
	
	
	

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	 st.executeUpdate("delete from signup where userid="+id+"");
response.sendRedirect("allstu.jsp");

}

catch(Exception ex)
{
out.println(ex.toString());
}


}

%>
</body>
</html>