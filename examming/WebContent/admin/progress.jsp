<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
     <style>
     
     h5
     {
     margin-left: 800px;
     }
     
     </style>
   <%
int count=0;
int d11=Integer.parseInt(request.getParameter("Id"));

try
{
Class.forName("com.mysql.jdbc.Driver");

Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
Statement st1=com1.createStatement();
String str2="select count(rid) from result where userid='"+d11+"'" ;
ResultSet rs1=st1.executeQuery(str2);

while(rs1.next())
{
	count=rs1.getInt(1);
	

	
}



st1.close();
com1.close();

}

catch(Exception ex)
{
out.println(ex.toString());
}



%>
      <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Progress Report</h6>
            </div>
            <div class="card-body">
            <h5 class="m-9 font-weight-bold text-primary">Total Given Exam :&nbsp<%=count %></h5>
           
           
           
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
                  <thead>
   
                    <tr>
                      <th>Subject Name</th>
                      <th>Topic Name</th>
                      <th>Total Marks</th>
                      <th>Total Score</th>
                      
                    </tr>
                  </thead>
                  <tbody>
              
                    <%


try{
	int d1=Integer.parseInt(request.getParameter("Id"));
	int rid=0;
	String subname="";
	String topicname="";
	int score =0;	
	int wans=0;
	int rans=0;
	int total =0;
	int userid=0;
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection comr=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement str=comr.createStatement();
	
	String str1="select * from result where userid='"+d1+"'" ;
	String st2="";
	ResultSet rs=str.executeQuery(str1);
	
	while(rs.next())
	{
		subname=rs.getString("subjectname");
		topicname=rs.getString("topicname");
		score=rs.getInt("score");
		wans=rs.getInt("wans");
		rans=rs.getInt("rans");
		total=rs.getInt("total");
		st2+="<tr>"
	     		+"<td>"+subname+"</td>"
	     		+"<td>"+topicname+"</td>"
	     		+"<td>"+score+"</td>"
	     		+"<td>"+total+"</td>"
	     		+"</tr>";
		

		
	}
	
	out.println(st2);
	
	str.close();
	comr.close();

	}

	catch(Exception ex)
	{
	out.println(ex.toString());
	}
%>


                  
                               
                  </tbody>
                </table>
              </div>
            </div>
          </div>
<%@include file="footer.jsp" %>