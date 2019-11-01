<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String ans=request.getParameter("radio");

int qid=0;
	qid= Integer.parseInt(request.getParameter("id")+"");
	


String s1="";
int id1=0;
int a=0;
int b=0;
int cnt=0;
int cnt1=0;
String s2="";
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	
	String str1="select * from question where qid="+qid;
	ResultSet rs=st.executeQuery(str1);
	String str="";
	
	
	while(rs.next())
	{
		s1=rs.getString("qid");
		id1=Integer.parseInt(s1);
		s2=rs.getString("qans");
		
		
		if(s2.equals(ans))
		{
			
			int ans1=Integer.parseInt(session.getAttribute("ans1")+"");
			ans1=ans1+1;
			session.setAttribute("ans1",ans1);
			out.println(ans1);
			
		   response.sendRedirect("extra2.jsp");   	
		
		
		}
		else
		{
			int ans2=Integer.parseInt(session.getAttribute("ans2")+"");
			ans2=ans2+1;
			session.setAttribute("ans2",ans2);
			out.println(ans2);
			response.sendRedirect("extra2.jsp");  
			
		}
		
		
		
	}
	
	
	
	

		
	
	
	
	
st.close();
com.close();


}

catch(Exception ex)
{
out.println(ex.toString());
}

%>
</body>
</html>