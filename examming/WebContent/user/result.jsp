<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
 <link href="vendorco/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/congo1.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Shyam Sir</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/congo1.css" rel="stylesheet">
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

<body class="bg-gradient-primary">

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

    
    <br>
    <br>	
    
 <%
     int sid1=0;
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
 		sid1=rs.getInt(1);
 		
 		
 		
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
int right=0;
if(session.getAttribute("ans1")!=null )
{
	right=Integer.parseInt(session.getAttribute("ans1")+"");

}
int wrong=0;
if(session.getAttribute("ans2")!=null)
{
	wrong=Integer.parseInt(session.getAttribute("ans2")+"");

}

%>
<%
int sid=0;
int no2=0;
int tid=0;
int qid=0;
String sname="";
String tname="";
if(session.getAttribute("sn")!=null)
{
	sid=Integer.parseInt(session.getAttribute("sn")+"");
	no2=Integer.parseInt(session.getAttribute("tn")+"");
}

	
	



try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection com=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement st=com.createStatement();
	String str1="select * from subject where subid="+sid;
	
	
	ResultSet rs=st.executeQuery(str1);
	String str="";
	while(rs.next())
	{
		sname=rs.getString("subname");
	}
	st.close();
	
	Statement st1=com.createStatement();
	String str2="select * from topic where topicid="+no2;
	ResultSet rs1=st1.executeQuery(str2);
	while(rs1.next())
	{
		tname=rs1.getString("topicname");
		tid=rs1.getInt("topicid");
	}
	
	st1.close();
	Statement st2=com.createStatement();
	String str3="select count(*) from question where topicid="+tid;
	ResultSet rs2=st2.executeQuery(str3);
	while(rs2.next())
	{
		qid=rs2.getInt(1);
		
	}
	
	
	st2.close();	
	com.close();

	}

	catch(Exception ex)
	{
	out.println(ex.toString());
	}

%>
<%

try{
	int rid=0;
	String subname=sname;
	String topicname=tname;
	int score =qid;	
	int wans=wrong;
	int rans=right;
	int total =right;
	int userid=0;
	Class.forName("com.mysql.jdbc.Driver");
	Class.forName("com.mysql.jdbc.Driver");
	Connection comr=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
	Statement str=comr.createStatement();
	int str1=str.executeUpdate("INSERT INTO result (rid,subjectname,topicname,score,wans,rans,total,userid) VALUES (NULL,'"+subname+"','"+topicname+"','"+score+"','"+wans+"','"+rans+"','"+total+"','"+sid1+"');");
	
	str.close();
	comr.close();

	}

	catch(Exception ex)
	{
	out.println(ex.toString());
	}
%>

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Your Result</h1>
              </div>
              <hr>
              <form class="user">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <span>Subject Name</span>
                    <span>:</span>
                    <span><%=sname%></span>
                  </div>
                  
                </div>
                
                <div class="form-group">
                  <span>Topic Name</span>
                  <span>:</span>
                    <span><%=tname %></span>
                </div>
                
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <span>Total Question</span>
                    <span>:</span>
                    <span><%=qid %></span>
                     </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <span>Right Answer</span>
                    <span>:</span>
                    <span><%=right %></span>
                     </div>
                </div>
                
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <span>Wrong Answer</span>
                    <span>:</span>
                    <span><%=wrong %></span>
                     </div>
                
                <div class="col-sm-6">
                    <span>Total Marks</span>
                    <span>:</span>
                    <span><%=right %></span>
                  </div>
                  </div>
                <br>
                <a href="courses.jsp" class="btn btn-primary btn-user btn-block">
                  Next Test
                </a>
                <hr>
                
                
                <a href="index.jsp" class="btn btn-google btn-user btn-block">
                  Go To Home Page
                </a>
                
              
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

       <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="js/custom.js"></script>
     <script src="vendorco/jquery/jquery.min.js"></script>
  <script src="vendorco/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendorco/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="jsco/sb-admin-2.min.js"></script>
    <!-- google analytics  -->
   

</body>

</html>