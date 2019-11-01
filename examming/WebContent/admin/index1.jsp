<%@page import="java.time.LocalDate"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
   
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
   <%
   int s=0;
   int s1=0;
   int s2=0;
   int s4=0;
   int s5=0;
   Date s3;
   
   
try{
	LocalDate abc=LocalDate.now();
	//out.println(abc);
	
  
   	Class.forName("com.mysql.jdbc.Driver");
   	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   	Statement st=com.createStatement();
   	String str1="select count(subid) from subject";
   	ResultSet rs=st.executeQuery(str1);
   	while(rs.next())
   	{
   		s=rs.getInt(1);
   				
   	}
   	
   	st.close();
   	
   	Statement st1=com.createStatement();
   	String str2="select count(topicid) from topic";
   	ResultSet rs1=st1.executeQuery(str2);
   	while(rs1.next())
   	{
   		s1=rs1.getInt(1);
   				
   	}
   	
   	st1.close();
   	Statement st2=com.createStatement();
   	String str3="select count(userid) from signup";
   	ResultSet rs2=st2.executeQuery(str3);
   	while(rs2.next())
   	{
   		s2=rs2.getInt(1);
   				
   	}
   	st2.close();
   	
 
   	Statement st4=com.createStatement();
   	String str5="select count(adminid) from admin";
   	ResultSet rs4=st4.executeQuery(str5);
   	while(rs4.next())
   	{
   		s4=rs4.getInt(1);
   				
   	}
   	st4.close();
   	com.close();

   	
   	}
   	

   	catch(Exception ex)
   	{
   	out.println(ex.toString());
   	}
   %>
           <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-4">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xxl font-weight-bold text-primary text-uppercase mb-1">Total Subjects </div>
                      <br>
                      <div class="h4 mb-0 font-weight-bold text-gray-800"><%=s%></div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-4">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xxl font-weight-bold text-primary text-uppercase mb-1">Total Topics </div>
                       <br>
                      <div class="h4 mb-0 font-weight-bold text-gray-800"><%=s1%></div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-4">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xxl font-weight-bold text-primary text-uppercase mb-1">Total Students </div>
                       <br>
                      <div class="h4 mb-0 font-weight-bold text-gray-800"><%=s2%></div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-4">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xxl font-weight-bold text-primary text-uppercase mb-1">Total Admin </div>
                      <br>
                      <div class="h4 mb-0 font-weight-bold text-gray-800"><%=s4%></div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            </div>
 
 
<%@include file="footer.jsp" %>