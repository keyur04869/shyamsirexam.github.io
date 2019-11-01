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
<title>Add Subject</title>
</head>
<body>
<h1 class="abc1">Add Question</h1>
<form>
<div class="form-group">
    <label for="exampleInputEmail1">Topic Id</label>
    <input type="text" class="form-control" id="tid" name="tid" placeholder="Add Topic Id ">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Subject Id</label>
    <input type="text" class="form-control" id="sid" name="sid" placeholder="Add Subject Id">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Question Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="Add Question ">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Answer</label>
    <input type="text" name="sans" class="form-control" id="exampleInputPassword1" placeholder="Add Answer">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Option 1</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="op1" placeholder="Add option 1 ">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Option 2</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="op2" placeholder="Add option 2">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Option 3</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="op3" placeholder="Add option 3">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Option 4</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="op4" placeholder="Add option 4">
  </div>
    <button type="submit" class="abc" >Add Question</button>
    <br>
    <br>
</form>
</body>
</html>
<%
if(request.getParameter("name")!=null)
{

	String tid=request.getParameter("tid");
	String sid=request.getParameter("sid");
	String sname=request.getParameter("name");
	String sans=request.getParameter("sans");
	String op1=request.getParameter("op1");
	String op2=request.getParameter("op2");
	String op3=request.getParameter("op3");
	String op4=request.getParameter("op4");
	

try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	st.executeUpdate("INSERT INTO question(qid,topicid,subid,qname,qans,op1,op2,op3,op4) VALUES (null,'"+tid+"','"+sid+"','"+sname+"','"+sans+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"');");
	

	response.sendRedirect("addq.jsp");
	


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