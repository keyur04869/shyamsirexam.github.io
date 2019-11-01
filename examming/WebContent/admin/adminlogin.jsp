<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Log In</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/fonts1/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/css1/style.css">
</head>
<%
String a1="",a2="";
if(request.getParameter("uname")!=null)
{
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	session.setAttribute("uname", uname);
	session.setAttribute("pass", pass);
	
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	String str1="select * from Admin where Username='"+uname+"' AND password='"+pass+"'" ;
	
	ResultSet rs=st.executeQuery(str1);
	if(rs.next())
	{
	
	response.sendRedirect("index1.jsp");
	
	}
	else
	{
	a1="Invalid Username";
	a2="Invalid Password ";
	}
	
	
	

st.close();
com.close();

}

catch(Exception ex)
{
out.println(ex.toString());
}
}



%>
<body>

    <div class="main">

        <!-- Sign up form -->
        

        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images1/signin-image.jpg" alt="sing up image"></figure>
                        <a href="login.jsp" class="signup-image-link">Or Login With User</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Admin Log In</h2>
                        <form method="POST" class="register-form" id="login-form" >
                            <div class="form-group">
                                <label for="uname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="uname" id="uname" placeholder="User name" required="required" <%=a1%>/>
                            </div>
                            
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required="required"  <%=a2%>/>
                            </div>
                           
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" onclick="verify()" value="Log in"/>
                            </div>
                        </form>
                       
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/js1/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
