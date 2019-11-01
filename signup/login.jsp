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
    <link rel="stylesheet" href="fonts1/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css1/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        

        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images1/signin-image.jpg" alt="sing up image"></figure>
                        <a href="signup.jsp" class="signup-image-link">Create an account!!</a>
                       
                        <a href="adminlogin.jsp" class="signup-image-link">You are Admin!!</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Log In</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="uname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="uname" id="uname" placeholder="User name" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required="required"/>
                            </div>
                           
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        <!-- <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="https://en-gb.facebook.com/login/"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="https://twitter.com/login?lang=en"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="https://accounts.google.com/signin/v2/identifier?passive=1209600&osid=1&continue=https%3A%2F%2Fplus.google.com%2F%2Bshyamchawda&followup=https%3A%2F%2Fplus.google.com%2F%2Bshyamchawda&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                                
                            </ul>
                        </div> -->
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js1/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<%
String a1="",a2="";
if(request.getParameter("uname")!=null)
{
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	String utype=request.getParameter("utype");
	session.setAttribute("uname1", uname);
	
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	String str1="select * from signup where username='"+uname+"' AND password='"+pass+"'" ;
	
	ResultSet rs=st.executeQuery(str1);
	if(rs.next())
	{
	response.sendRedirect("../user/index.jsp");
	
	}
	else
	{
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Sorry! UserName And Password are incorrect');");
		   out.println("location='login.jsp';");
		   out.println("</script>");   
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