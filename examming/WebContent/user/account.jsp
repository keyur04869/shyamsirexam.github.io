<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shyam Sir</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">
    <link rel="icon" href="img/fav.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box-header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="courses.jsp">Courses</a></li>
                <li><a href="progress.jsp">Progress</a></li>
                <li><a href="account.jsp">Your Account</a><i class="fa fa-user color"></i></li>
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
        <h1>Edit Profile</h1>
        
    </div>
    <!-- end top bar -->

    <!-- main-container -->
    <div class="container main-container">
        <div class="col-md-12">
            <form action="#" method="post">
                <div class="row">
                     
   <% 
   String s1="";
   String s2="";
   String s3="";
   String s4="";
   String s5="";
int s6=0;		 
         String b1=(String)session.getAttribute("uname1")+"";
         
         
 				try{
   								
   					Class.forName("com.mysql.jdbc.Driver");
   					Connection com1=DriverManager.getConnection("jdbc:mysql://localhost/db_exam","root","");
   					Statement st1=com1.createStatement();			
   					String str1="select * from signup where Username ='"+b1+"'";
   					ResultSet rs=st1.executeQuery(str1);
   					String str="";
		while(rs.next())
			{
			s1=rs.getString(5);
			s2=rs.getString(6);
			s3=rs.getString(2);
			s4=rs.getString(7);	
			s5=rs.getString(3);
			s6=rs.getInt(1);		
			session.setAttribute("s6",s6);
			}
		
   					st1.close();
   					com1.close();
	
   					}

   				catch(Exception ex)
   					{
   					out.println(ex.toString());
   					}
   								
                  
                   
                    %>  
      <!-- DataTales Example -->
          <div class="card shadow mb-4">
            
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0" >
                  <form method="post" action="profile1.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1">FirstName</label>
    <input type="text" class="form-control" id="exampleInputEmail1" value="<%=s1%>" name="name" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">LastName</label>
    <input type="text" class="form-control" id="exampleInputEmail1" value="<%=s2%>" name="name" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">UserName</label>
    <input type="text" name="simg" class="form-control" id="exampleInputPassword1" value="<%=s3%>" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Date Of join</label>
    <input type="text" name="simg" class="form-control" id="exampleInputPassword1" value="<%=s4%>" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="simg" class="form-control" id="exampleInputPassword1" value="<%=s5%>" readonly="readonly"  >
  </div>
    <button type="submit" class="abc" >Edit Profile</button>
</form>
                  
                </table>
              </div>
            </div>
          </div>
                </div>
            </form>
        </div>

        


    </div>
    <!-- end main-container -->

    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Shyam Sir 2019</p>
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

</body>

</html>