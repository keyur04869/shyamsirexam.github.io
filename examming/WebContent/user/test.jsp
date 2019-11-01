<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Test</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- end Preloader -->

    <div class="container-fluid">
        <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
                 <h2><a href="index.html">Shyam Sir</a></h2>
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
        </header>
        <!-- end box-header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="courses.jsp">Courses</a> <i class="ion-ios-circle-filled color"></i></li>
                <li><a href="progres.jsp">Progress</a></li>
                <li><a href="account.jsp">Your Account</a></li>
               <li><a href="logout.jsp">Logout</a></li>

                <li class="box-label">Follow me</li>

                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </nav>
        <!-- end nav -->
    </div>

    <!-- Top bar -->
    <div class="top-bar">
        <h1>Test</h1>
    </div>
    <!-- end Top bar -->
<%
int i=0;
String s1="";
int id1=0;
String s2="";
String s3="";
String s4="";
String s5="";
String s6="";
try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	
	String str1="select * from question";
	ResultSet rs=st.executeQuery(str1);
	String str="";
	while(rs.next())
	{
		int[] a1 = new int[20];
		int[] no = (int[])session.getAttribute("no"); 
		out.println("sdfds"+no[i]);	
		 s1=rs.getString("qid");
		id1=Integer.parseInt(s1);
		 s2=rs.getString("qname");
		 s3=rs.getString("op1");
		s4=rs.getString("op2");
		s5=rs.getString("op3");
		s6=rs.getString("op4");
		
		}
	
	
	st.close();
	com.close();

	}

	catch(Exception ex)
	{
	out.println(ex.toString());
	}
%>
   <div class="container main-container">
        <div class="col-md-12">
            <form action="#" method="post">
                <div class="row ">
                    <div class="col-md-10">
                        <div>
                            <h2> <%=s2%></h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div>
                        <h4>
                            <input type="radio" name="radio" id="radio">
                            <span><%=s3 %></span></h4>
                        </div>

                    </div>
                    <div class="col-md-12">
                        <div>
                        <h4>
                            <input type="radio" name="radio" id="radio">
                            <span><%=s4 %></span>
                            </h4>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div>
                        <h4>
                            <input type="radio" name="radio" id="radio">
                            <span><%=s5 %></span>
                          </h4>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div>
                        <h4>
                            <input type="radio" name="radio" id="radio">
                            <span><%=s6 %></span>
                        </h4>
                        </div>
                    </div>
                    <div class="col-md-8">
                     
                    </div>
                    <div class="col-md-4">
                        <input type="submit"  class="btn btn-box" name="submit" id="submit" value="Next">
                    </div>
                    
                    
                </div>
            </form>
        </div>
    </div>


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Box Portfolio 2016</p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->



    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="js/custom.js"></script>
    
    <!-- google analytics  -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-76796224-1', 'auto');
        ga('send', 'pageview');
    </script>

</body>

</html>