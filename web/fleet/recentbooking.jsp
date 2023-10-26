<%-- 
    Document   : recentbooking
    Created on : 11 Sep, 2022, 12:01:49 AM
    Author     : panma
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Transportation HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>

    <body>
        <!-- Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="assets/img/logo/loder.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->
        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header ">
                    <div class="header-top d-none d-lg-block">
                        <div class="container">

                        </div>
                    </div>
                    <div class="header-bottom  header-sticky">
                        <div class="container">
                            <div class="row align-items-center">
                                <!-- Logo -->
                                <div class="col-xl-2 col-lg-2">
                                     <div class="logo">
                                <a href="index.jsp"><img src="assets/img/logo/truck3.png" width="150px" alt=""></a>
                            </div>
                                </div>
                                <div class="col-xl-10 col-lg-10">
                                    <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                        <!-- Main-menu -->
                                         <%String name = (String) session.getAttribute("username");
                                            if (name == null) {
                                                session.invalidate();
                                                out.print("<script>");
                                                out.print("alert('Your session is invalid,Please login First!!');");
                                                out.print("location='index.jsp';");
                                                out.print("</script>");
                                            }
                                        %>
                                        <div class="main-menu d-none d-lg-block">
                                            <nav> 
                                                <ul id="navigation">                                                                                          
                                                    <li class="a active"><a href="index.html">Home</a></li>
                                                    <li><a href="about.html">About</a></li>
                                                    <li><a href="services1.jsp">Services</a></li>
                                                    <li><a href="blog.html">Booking</a>
                                                        <ul class="submenu">
                                                            <li><a href="blog.html">Recent Booking</a></li>
                                                            <li><a href="blog_details.html">Payment</a></li>
                                                            
                                                        </ul>
                                                    </li>
                                                    <li><a href="dash/adashboard.jsp">DashBoard</a></li>
                                                    <li><a href="#">Contact</a></li>
                                                    <li><a href="blog.html"><i class="fa fa-user "></i>&nbsp;&nbsp;  <%=name %></a>
                                                        <ul class="submenu">
                                                            <li><a href="clogout.jsp"><i class="fa fa-arrow-right"></i>&nbsp;&nbsp;Logout</a></li>
                                                            
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <!-- Header-btn -->
                                        
                                    </div>
                                </div> 
                                <!-- Mobile Menu -->
                                <div class="col-12">
                                    <div class="mobile_menu d-block d-lg-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>
        <main>
         
            <!--? slider Area Start-->
           <div class="slider-area ">
            <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap">
                                <h2>Your Recent Booking's</h2>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index1.jsp">Home</a></li>
                                         
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
            <!-- slider Area End-->
            <!--================Blog Area =================-->

                                   
            <section class="blog_area section-padding">
<!--                            <div class="hero__caption">
                                        <h1 ><span>Your Recent Booking</span></h1>
                                    </div>-->

                <div class="container">
                    <div class="row">
                     <%
                            try {
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                                String sql = "{call fy.disuserbook(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
                                CallableStatement cs = con.prepareCall(sql);

                                cs.registerOutParameter(1, OracleTypes.CURSOR);
                                cs.registerOutParameter(2, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(3, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(4, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(5, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(6, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(7, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(8, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(9, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(10, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(11, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(12, java.sql.Types.VARCHAR);
                                cs.registerOutParameter(13, java.sql.Types.VARCHAR);
                                cs.setString(14,name);

                                cs.executeQuery();

                                ResultSet rs = (ResultSet) cs.getObject(1);

                                while (rs.next()) {
                                    String a = rs.getString(1);
                                    String b = rs.getString(2);
                                    String c = rs.getString(3);
                                    String d = rs.getString(4);
                                    String e = rs.getString(5);
                                    String f = rs.getString(6);
                                    String g = rs.getString(7);
                                    String h = rs.getString(8);
                                    String i = rs.getString(9);
                                    String j = rs.getString(10);
                                    String k = rs.getString(11);
                                    String l = rs.getString(12);
                                    
                        %>   
                        <div class="col-lg-8 mb-5 mb-lg-0">
                            <div class="blog_left_sidebar">
                                <article class="blog_item">
                                    <div class="blog_item_img">

                                        <a href="#" class="blog_item_date">
                                            <h3><%=c%></h3>
                                            
                                        </a>
                                    </div>

                                    <div class="blog_details">
                                        <a class="d-inline-block" href="blog_details.html">
                                            <h2>Pickpoint:&nbsp;&nbsp;<%=d%></h2>
                                        </a>
                                        <br><a class="d-inline-block" href="blog_details.html">
                                            <h2>DropPoint:&nbsp;&nbsp;<%=e%></h2>
                                        </a>
                                        <br><a class="d-inline-block" href="blog_details.html">
                                            <h2>Container Number:&nbsp;&nbsp;<%=g%></h2>
                                        </a>
                                        <br><a class="d-inline-block" href="blog_details.html">
                                            <h2>Goods Weight:&nbsp;&nbsp;<%=h%> </h2>
                                        </a>
                                        <br><a class="d-inline-block" href="blog_details.html">
                                            <h2>Total Km:&nbsp;&nbsp;<%=i%> </h2>
                                        </a>
                                        <br><a class="d-inline-block" href="blog_details.html">
                                            <h2>Vehicle Number:&nbsp;&nbsp;<%=j%> </h2>
                                        </a>
                                         <br><a class="d-inline-block" href="blog_details.html">
                                             <h2>Total Payment:&nbsp;₹&nbsp;&nbsp;<%=l%> </h2>
                                        </a>
                                    </div>
                                </article>



                            </div>
                        </div><% }
                                        } catch (Exception e) {
                                            out.println(e.getMessage());
                                        }
                                    
                                %>
                        <div class="col-lg-4">
                            <div class="blog_right_sidebar">




                            </div>
                        </div>
                      
                    </div>
                </div>
            </section>
            <!--================Blog Area =================-->
        </main>
        <footer>
            <!--? Footer Start-->
            <div class="footer-area footer-bg">
                <div class="container">
                    <div class="footer-top footer-padding">
                        <!-- footer Heading -->
                        <div class="footer-heading">
                            <div class="row justify-content-between">
                                <div class="col-xl-6 col-lg-8 col-md-8">
                                    <div class="wantToWork-caption wantToWork-caption2">
                                        <h2>We Understand The Importance Approaching Each Work!</h2>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4">
                                    <span class="contact-number f-right">+ 1 212-683-9756</span>
                                </div>
                            </div>
                        </div>
                        <!-- Footer Menu -->
                        <div class="row d-flex justify-content-between">
                            <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                                <div class="single-footer-caption mb-50">
                                    <div class="footer-tittle">
                                        <h4>COMPANY</h4>
                                        <ul>
                                            <li><a href="#">About Us</a></li>
                                            <li><a href="#">Company</a></li>
                                            <li><a href="#"> Press & Blog</a></li>
                                            <li><a href="#"> Privacy Policy</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                                <div class="single-footer-caption mb-50">
                                    <div class="footer-tittle">
                                        <h4>Open hour</h4>
                                        <ul>
                                            <li><a href="#">Monday 11am-7pm</a></li>
                                            <li><a href="#"> Tuesday-Friday 11am-8pm</a></li>
                                            <li><a href="#"> Saturday 10am-6pm</a></li>
                                            <li><a href="#"> Sunday 11am-6pm</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                                <div class="single-footer-caption mb-50">
                                    <div class="footer-tittle">
                                        <h4>RESOURCES</h4>
                                        <ul>
                                            <li><a href="#">Home Insurance</a></li>
                                            <li><a href="#">Travel Insurance</a></li>
                                            <li><a href="#"> Car Insurance</a></li>
                                            <li><a href="#"> Business Insurance</a></li>
                                            <li><a href="#"> Heal Insurance</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-5 col-sm-6">
                                <div class="single-footer-caption mb-50">
                                    <!-- logo -->
                                    <div class="footer-logo">
                                        <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                    </div>
                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p class="info1">GThe trade war currently ensuing between te US anfd several natxions around thdhe globe, most fiercely with.</p>
                                        </div>
                                    </div>
                                    <!-- Footer Social -->
                                    <div class="footer-social ">
                                        <a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                        <a href=""><i class="fab fa-twitter"></i></a>
                                        <a href="#"><i class="fas fa-globe"></i></a>
                                        <a href="#"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer Bottom -->
                    <div class="footer-bottom">
                        <div class="row d-flex align-items-center">
                            <div class="col-lg-12">
                                <div class="footer-copy-right text-center">
                                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End-->
        </footer>
        <!-- Scroll Up -->
        <div id="back-top" >
            <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
        </div>

        <!-- JS here -->

        <!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>

        <!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>

    </body>
</html>