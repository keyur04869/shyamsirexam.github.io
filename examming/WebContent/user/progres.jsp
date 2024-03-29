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
    <title>Shyam Sir</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/css3/util.css">
	<link rel="stylesheet" type="text/css" href="css/css3/main.css">

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
                <h2><a href="index.jsp">Shyam Sir</a></h2>
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
                <li class="box-label"></li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="courses.jsp">Courses</a></li>
                <li><a href="progres.jsp">Progress</a><i class="fa fa-trophy color"></i></li>
                <li><a href="account.jsp">Your Account</a></li>
                <li><a href="logout.jsp">Logout</a></li>

                <li class="box-label">Follow me</li>

                <li class="box-social"><a href="#0"><i class="fa fa-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="fa fa-instagram"></i></a></li>
                <li class="box-social"><a href="#0"><i class="fa fa-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="fa fa-linkedin"></i></a></li>
            </ul>
        </nav>
        <!-- end nav -->
    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>Progress Report</h1>
      
    </div>
    <!-- end top bar -->

    <!-- main container -->
    <div class="main-container portfolio-inner space clearfix">
        <!-- portfolio div -->
        

<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Subject Name </th>
								<th class="column2">Topic Name</th>
								<th class="column3">Total Score</th>
								<th class="column1">Right Answer</th>
								<th class="column2">Wrong Answer</th>
								<th class="column3">Total Marks</th>
								
								
							</tr>
						</thead>
     
     
     <%
     int sid=0;
     String uname=(String)session.getAttribute("uname1")+"";
     try
     {
     Class.forName("com.mysql.jdbc.Driver");
 	Connection comr=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
 	Statement str=comr.createStatement();
 	String str1="select * from signup where username='"+uname+"'";
 	ResultSet rs=str.executeQuery(str1);
 	
 	while(rs.next())
 	{
 		sid=rs.getInt(1);
 		
 		
 		
 	}
 	
 	
    
 	str.close();
 	comr.close();

 	}

 	catch(Exception ex)
 	{
 	out.println(ex.toString());
 	}
     %>
        
<%


try{
	int rid=0;
	String subname="";
	String topicname="";
	int score =0;	
	int wans=0;
	int rans=0;
	int total =0;
	int userid=0;
	Class.forName("com.mysql.jdbc.Driver");
	Class.forName("com.mysql.jdbc.Driver");
	Connection comr=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement str=comr.createStatement();
	String str1="select * from result where userid='"+sid+"'";
	
	ResultSet rs=str.executeQuery(str1);
	String strs="<tbody><div class='no-padding portfolio_container clearfix'>";
	while(rs.next())
	{
		subname=rs.getString("subjectname");
		topicname=rs.getString("topicname");
		score=rs.getInt("score");
		wans=rs.getInt("wans");
		rans=rs.getInt("rans");
		total=rs.getInt("total");
		
		strs+="<tr>"
			+"<td class='column1'>"+subname+"</td>"
			+"<td class='column2'>"+topicname+"</td>"
			+"<td class='column3'>"+score+"</td>"
			+"<td class='column1'>"+wans+"</td>"
			+"<td class='column2'>"+rans+"</td>"
			+"<td class='column3'>"+total+"</td>"
			
			+"</tr>";

		
	}
	strs+="</tbody>";
	out.println(strs);
	
	str.close();
	comr.close();

	}

	catch(Exception ex)
	{
	out.println(ex.toString());
	}
%>

                  


						
					</table>
				</div>
			</div>
		</div>
	</div>
				

                
                <!-- end portfolio_container -->
           
        <!-- end portfolio div -->
    </div>
    <!-- end main container -->

	
	
    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">� Shyam Sir 2019</p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="fa fa-arrow-up"></i></a>
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
