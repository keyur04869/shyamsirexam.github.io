<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
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
   <% 
   String s1="";
   String s2="";
   String s3="";
int s4=0;		 
         String b1=(String)session.getAttribute("uname")+"";
         
     
 				try{
   								
   					Class.forName("com.mysql.jdbc.Driver");
   					Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   					Statement st1=com1.createStatement();			
   					String str1="select * from admin where Username ='"+b1+"'";
   					ResultSet rs=st1.executeQuery(str1);
   					String str="";
		while(rs.next())
			{
			s1=rs.getString(2);
			s2=rs.getString(3);
			s3=rs.getString(4);
			s4=rs.getInt(1);	
			session.setAttribute("s4",s4);
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
              <h6 class="m-0 font-weight-bold text-primary">Your Profile</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
                  <form method="post" action="profile1.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" value="<%=s1%>" name="name" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">UserName</label>
    <input type="text" name="simg" class="form-control" id="exampleInputPassword1" value="<%=s2%>" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="simg" class="form-control" id="exampleInputPassword1" value="<%=s3%>" readonly="readonly"  >
  </div>
    <button type="submit" class="abc" >Edit Profile</button>
</form>
                  
                </table>
              </div>
            </div>
          </div>
<%@include file="footer.jsp" %>