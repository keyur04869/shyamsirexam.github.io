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
  
int a1=0;
session.setAttribute("ans1",a1);
int b1=0;
session.setAttribute("ans2",b1);


int no=Integer.parseInt(request.getParameter("Id"));
session.setAttribute("tn", no);


try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	int b=0;
	int i=0;
	String str1="select * from question where topicid="+no;
	ResultSet rs=st.executeQuery(str1);
	String str="";
	while(rs.next())
	{
		 b++;
	}
	
	String a[]=new String[b];

	ResultSet rs1=st.executeQuery(str1);
	while(rs1.next())
	{
		a[i]=rs1.getString("qid");
		 i++;
	}

	st.close();
	com.close();
	
	session.setAttribute("arg",a);
	int x=0;
	session.setAttribute("cnt", x);
	response.sendRedirect("extra2.jsp");

	
	}

	catch(Exception ex)
	{
	out.println(ex.toString());
	}
%>
</body>
</html>