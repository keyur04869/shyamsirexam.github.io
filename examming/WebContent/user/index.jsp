<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <!-- <link href="ionicons/css/ionicons.min.css" rel="stylesheet"> -->
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
        <!-- box header -->
        <header class="box-header">
            <div class="box-logo">
                <h2><a href="index.html">Shyam Sir</a></h2>
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <li class="box-label"></li>
                <li><a href="index.jsp">Home</a><i class="fa fa-home color"></i></li>
                <li><a href="courses.jsp">Courses</a></li>
                <li><a href="progres.jsp">Progress</a></li>
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

        <!-- box-intro -->
        <section class="box-intro">
            <div class="table-cell">
                <h1 class="box-headline letters rotate-2">
                    <span class="box-words-wrapper">
                        <b class="is-visible">Shyam Sir</b>
                        <b>&nbsp;Coder</b>
                        
                    </span>
		        </h1>
                <h5>everything you need to Build Programming Skills</h5>
                
            </div>

            <div class="mouse">
                <div class="scroll"></div>
            </div>
            
        </section>
        <!-- end box-intro -->
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