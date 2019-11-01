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
    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts1/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css1/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="uname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="uname" id="uname" placeholder="User Name" required="required" />
                            </div>
                             <div class="form-group">
                                <label for="fname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="fname" id="fname" placeholder="First Name" required="required"/>
                            </div>
                             <div class="form-group">
                                <label for="lname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="lname" id="lname" placeholder="Last Name" required="required"/>
                            </div>
                            <!-- <div class="form-group">
                                <label for="uesrtype"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="" readonly="readonly" name="usertype" id="usertype" placeholder=" You are a Student!!!! Ignore This Part " />
                            </div> -->
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="doj"><i class="zmdi zmdi-time"></i></label>
                                <input type="date" name="doj" id="doj" placeholder="Date of joining" required="required"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term"  required="required"/>
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images1/signup-image.jpg" alt="sing up image"></figure>
                        <a href="login.jsp" class="signup-image-link">I am already member!</a>
                        <br>
                        <a href="adminlogin.jsp" class="signup-image-link">I am Admin!</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sing in  Form -->
      
    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js1/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<%
if(request.getParameter("uname")!=null)
{
	String uname=request.getParameter("uname");
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String usertype="1";
	String pass=request.getParameter("pass");
	String doj=request.getParameter("doj");
	


try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	st.executeUpdate("INSERT INTO signup(userid,username,password,usertype,firstname,lastname,doj) VALUES (null,'"+uname+"','"+pass+"','"+usertype+"','"+fname+"','"+lname+"','"+doj+"');");
	response.sendRedirect("../user/index.jsp");
	

	
	
	

st.close();
com.close();
}
catch(Exception ex)
{
out.println(ex.toString());
}

}


%>