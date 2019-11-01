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
<title>Add Student</title>
</head>
<body>
<h1 class="abc1">Add Student</h1>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">UserName</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="uname" placeholder="Enter UserName ">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">FirstName</label>
    <input type="text" name="fname" class="form-control" id="exampleInputPassword1" placeholder="Enter FirstName">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">LastName</label>
    <input type="text" name="lname" class="form-control" id="exampleInputPassword1" placeholder="Enter FirstName">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Date Of Join</label>
    <input type="date" name="doj" class="form-control" id="exampleInputPassword1" placeholder="Select Date">
  </div>
    <button type="submit" class="abc" >Add Student</button>
</form>
</body>
</html>
<%
if(request.getParameter("uname")!=null)
{
	String uname=request.getParameter("uname");
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String usertype="1";
	String pass=request.getParameter("pass");
	String doj=request.getParameter("doj");
	


try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	st.executeUpdate("INSERT INTO signup(userid,username,password,usertype,firstname,lastname,doj) VALUES (null,'"+uname+"','"+pass+"','"+usertype+"','"+fname+"','"+lname+"','"+doj+"');");
	response.sendRedirect("../admin/allstu.jsp");
	

	
	
	

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