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
input[type='number'] {
    -moz-appearance:textfield;
}/* Webkit browsers like Safari and Chrome */
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>

<form method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Pin</label>
    <input type="number" name="pin" placeholder="Enter Pin"><abbr title="Pin is Required for Access Admin Part because this part is under Super Admin"><i style="margin-left:10px " class="fa fa-question-circle" aria-hidden="true"></i></abbr>
  </div>
  
    <button type="submit" class="abc" >Submit Pin</button>
</form>
</body>
</html>
<%
int a4=0;
if(request.getParameter("pin")!=null)
{

	
	String pin=request.getParameter("pin");
	
	

try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	String str1="select * from superadmin where pin="+pin;
	ResultSet rs=st.executeQuery(str1);
	if(rs.next())
	{
		
		response.sendRedirect("addad.jsp");
		
	}
	else
	{
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Sorry! Pin is incorrect');");
		   out.println("location='mainadmin1.jsp';");
		   out.println("</script>");   
	}

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