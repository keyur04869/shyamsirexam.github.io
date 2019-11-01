<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
   
      <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">All Admin</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
                  <thead>
   
                    <tr>
                      <th> Name</th>
                      <th>UserName</th>
                      <th>Update Admin</th>
                      <th>Delete Admin</th>
                    </tr>
                  </thead>
                  <tbody>
         <% 
 				String s1;
         String s2;
         int s3;
   				try{
   								
   					Class.forName("com.mysql.jdbc.Driver");
   					Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   					Statement st1=com1.createStatement();			
   					String str1="Select * from admin";
   					ResultSet rs=st1.executeQuery(str1);
   					String str="";
		while(rs.next())
			{
			s1=rs.getString(2);
			s2=rs.getString(3);
			s3=rs.getInt(1);
			
			str+="<tr>"
     		+"<td>"+s1+"</td>"
     		+"<td>"+s2+"</td>"
     		+"<td ><a  href='upad.jsp?Id="+s3+"'><i class='fa fa-edit' aria-hidden='true'></i></a></td>"
     		+"<td ><a  href='delad.jsp?Id="+s3+"'><i class='fa fa-trash' aria-hidden='true'></i></a></td>"
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