<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
   
      <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">All Student</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
                  <thead>
   
                    <tr>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Date of Join</th>
                      
<th>Progress</th>
                      
                      <th>Delete Student</th>
                    </tr>
                  </thead>
                  <tbody>
         <% 
 				String s1;
         String s2;
         String s3;
         String count="";
         int d1=0;
   				try{
   								
   					Class.forName("com.mysql.jdbc.Driver");
   					Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   					Statement st1=com1.createStatement();			
   					String str1="Select * from signup";
   					ResultSet rs=st1.executeQuery(str1);
   					String str="";
		while(rs.next())
			{
			s1=rs.getString(5);
			s2=rs.getString(6);
			s3=rs.getString(7);
			d1=rs.getInt(1);
			str+="<tr>"
     		+"<td>"+s1+"</td>"
     		+"<td>"+s2+"</td>"
     		+"<td>"+s3+"</td>"
     		+"<td><a  href='progress.jsp?Id="+d1+"'><i class='fa fa-hourglass-half'></i></a></td>"
     		
     		+"<td ><a  href='delstu.jsp?Id="+d1+"'><i class='fa fa-trash' aria-hidden='true'></i></a></td>"
    		+"</tr>";
}
		out.println(str);					
		
				st1.close();
				
				com1.close();

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