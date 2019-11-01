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
   String a4="";
   String a2="";
   String a3="";
			 
   String b2=(String)session.getAttribute("uname")+"";
  int b1=(int)session.getAttribute("s4");
         
         
 				try{
   								
   					Class.forName("com.mysql.jdbc.Driver");
   					Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   					Statement st=com1.createStatement();
   					String str1="select * from admin where Username ='"+b2+"'";
					ResultSet rs=st.executeQuery(str1);
					String str="";
	while(rs.next())
		{
		a4=rs.getString(2);
		a2=rs.getString(3);
		a3=rs.getString(4);	
		
		}
	
			/* 	Statement st1=com1.createStatement();		
   				 st.executeUpdate("update admin set name='"+s1+"',Username='"+s2+"',password='"+s3+"' where adminid='"+b1+"'");
   			 */	 			
   				st.close();
					/* st1.close(); */
					com1.close();

   					
	
   					}

   				catch(Exception ex)
   					{
   					out.println(ex.toString());
   					}
   								
                  
                   
                    %>  
      <!-- DataTales Example -->
       <form method="post" action="edit.jsp">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Edit Profile</h6>
            </div>
               
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
              
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" value="<%=a4%>" name="name" >
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">UserName</label>
    <input type="text" name="simg" class="form-control" id="exampleInputPassword1" value="<%=a2%>" readonly="readonly" >
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="text" name="password" class="form-control" id="exampleInputPassword2" value="<%=a3%>">
  </div>
    <button type="submit" class="abc" >Edit Profile</button>

                  
                </table>
              </div>
             
            </div>
           
          </div>
  </form>
<%@include file="footer.jsp" %>