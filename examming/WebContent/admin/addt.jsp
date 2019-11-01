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
<title>Add Topic</title>
</head>
<body>
<h1 class="abc1">Add Topic</h1>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Topic Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="Enter Topic Name ">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Subject Id</label>
    <input type="text" name="sid" class="form-control" id="exampleInputPassword1" placeholder="Add Subject Id">
  </div>
    <button type="submit" class="abc" acio>Add Topic</button>
</form>
</body>
</html>
<%
if(request.getParameter("name")!=null)
{

	
	String sname=request.getParameter("name");
	String sid=request.getParameter("sid");
	

try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	st.executeUpdate("INSERT INTO topic(topicid,topicname,subid) VALUES (null,'"+sname+"','"+sid+"');");
	

	response.sendRedirect("addt.jsp");
	


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