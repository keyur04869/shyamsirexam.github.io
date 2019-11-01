<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int b1=(int)session.getAttribute("s44");	
if(request.getParameter("name")!=null)
{

	String id=request.getParameter("name");
	
	
	
	
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	 st.executeUpdate("update subject set subname='"+id+"' where subid='"+b1+"'");
	 response.sendRedirect("alls.jsp");

}

catch(Exception ex)
{
out.println(ex.toString());
}

}
%>
</body>
</html>