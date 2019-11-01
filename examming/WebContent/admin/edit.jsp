<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String b2=(String)session.getAttribute("uname")+"";

int b1=(int)session.getAttribute("s4");

String name=request.getParameter("name");
out.println(name);
String username=request.getParameter("simg");
out.println(username);
String password=request.getParameter("password");
out.println(password);

      
				try{
								
					Class.forName("com.mysql.jdbc.Driver");
					Connection com2=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
					Statement st1=com2.createStatement();
					/* String str1="select * from admin where Username ='"+b2+"'"; */
					st1.executeUpdate("update admin set name='"+name+"',Username='"+username+"',password='"+password+"' where adminid='"+b1+"'");
					/* ResultSet rs=st.executeQuery(str1); */
					String str="";
	/* while(rs.next())
		{
		a4=rs.getString(2);
		a2=rs.getString(3);
		a3=rs.getString(4);	
		
		} */
	
			/* 	Statement st1=com1.createStatement();		
				 st.executeUpdate("update admin set name='"+s1+"',Username='"+s2+"',password='"+s3+"' where adminid='"+b1+"'");
			 */	 			
				st1.close();
					/* st1.close(); */
					com2.close();

					
	response.sendRedirect("profile.jsp");
					}

				catch(Exception ex)
					{
					out.println(ex.toString());
					}
								
                         
          
%>
</body>
</html>