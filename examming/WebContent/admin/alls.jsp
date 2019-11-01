<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
   <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
   
      <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">All Subject</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
                  <thead>
   
                    <tr>
                      <th>Subject Name</th>
                      <th>Delete</th>
                      <th>Update</th>
                      
                    </tr>
                  </thead>
                  <tbody>
         <% 
 				String s1;
         int s2;
   				try{
   								
   					Class.forName("com.mysql.jdbc.Driver");
   					Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   					Statement st1=com1.createStatement();			
   					String str1="Select * from subject";
   					ResultSet rs=st1.executeQuery(str1);
   					String str="";
		while(rs.next())
			{
			s1=rs.getString(2);
			s2=rs.getInt(1);
			str+="<tr>"
     		+"<td>"+s1+"</td>"
     		+"<td ><a  href='dels.jsp?Id="+s2+"'><i class='fa fa-trash' aria-hidden='true'></i></a></td>"
     		+"<td><a  href='ups.jsp?Id="+s2+"'><i class='fas fa-edit'></i></a></td>"
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