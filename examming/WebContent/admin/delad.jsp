<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
.abc
{
background-color: #ffbf00;
font-size: 20px;
border-radius:20px;
border: none;
width:300px;
text-decoration: none;
}
</style>
<meta charset="ISO-8859-1">
<title>Delete Admin</title>
</head>
<body>
<%
String s1=request.getParameter("Id");
int id1=Integer.parseInt(s1);	

	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	
	
	String subname="";
	String sql="select * from Admin where Adminid="+id1;
	ResultSet rs =st.executeQuery(sql);
	while(rs.next())
	{
		subname=rs.getString(3);
		
	}



st.close();
com.close();


%>
<form name="frm" action="delad1.jsp" method="post">
  <div class="form-group">
  <input type="hidden" name="catid" value="<%=id1%>">
    <label for="exampleInputEmail1">User Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="name" value="<%=subname%>">
  </div>
    <button type="submit" class="abc" >Delete Admin</button>
</form>
</body>
</html>
<%@ include file="footer.jsp" %>