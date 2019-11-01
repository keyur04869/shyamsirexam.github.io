<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp" %>
   
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
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
.abc1
{
margin-left: 430px;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Admin</title>
</head>
<body>
<h1 class="abc1">Add Admin</h1>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Admin Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="Enter Admin Name ">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Admin UserName</label>
    <input type="text" name="simg" class="form-control" id="exampleInputPassword1" placeholder="Add Admin UserName">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="spass" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
    <button type="submit" class="abc" acio>Add Admin</button>
</form>
</body>
</html>
<%
if(request.getParameter("name")!=null)
{

	
	String sname=request.getParameter("name");
	String simg=request.getParameter("simg");
	String spass=request.getParameter("spass");
	
	

try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	st.executeUpdate("INSERT INTO Admin(Adminid,name,Username,password) VALUES (null,'"+sname+"','"+simg+"','"+spass+"');");
	

	response.sendRedirect("addad.jsp");
	


st.close();
com.close();

}

catch(Exception ex)
{
out.println(ex.toString());
}


}


%>
<%@include file="footer.jsp" %>