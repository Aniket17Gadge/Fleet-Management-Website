<%-- 
    Document   : index
    Created on : 9 Sep, 2022, 6:31:17 PM
    Author     : panma
--%>

<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Types"%>
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
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <!--? Preloader Start -->
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
                                                                                <%String a = (String) session.getAttribute("username");
                                            if (a == null) {
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
                                                    <li><a href="dash/userprofile.jsp">DashBoard</a></li>
                                                    <li><a href="#">Contact</a></li>
                                                    <li><a href="blog.html"><i class="fa fa-user "></i>&nbsp;&nbsp;  <%=a %></a>
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
                <div class="slider-active">
                    <!-- Single Slider -->
                    <div class="single-slider slider-height d-flex align-items-center">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-9 col-lg-9">
                                    <div class="hero__caption">
                                        <h1 >Safe & Reliable <span>fleet</span> Solutions!</h1>
                                    </div>
                                   
                                    <!-- Hero Pera -->
                                    <div class="hero-pera">
                                        <p>For order status inquiry</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- slider Area End-->
            <!--? our info Start -->
            <div class="our-info-area pt-70 pb-40">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="single-info mb-30">
                                <div class="info-icon">
                                    <span class="flaticon-support"></span>
                                </div>
                                <div class="info-caption">
                                    <p>Call Us Anytime</p>
                                    <span>+ (123) 1800-567-8990</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="single-info mb-30">
                                <div class="info-icon">
                                    <span class="flaticon-clock"></span>
                                </div>
                                <div class="info-caption">
                                    <p>Sunday CLOSED</p>
                                    <span>Mon - Sat 8.00 - 18.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="single-info mb-30">
                                <div class="info-icon">
                                    <span class="flaticon-place"></span>
                                </div>
                                <div class="info-caption">
                                    <p>Columbia, SC 29201</p>
                                    <span>USA, New York - 10620</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- our info End -->
            <!--? Categories Area Start -->
            <div class="categories-area section-padding30">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Section Tittle -->
                            <div class="section-tittle text-center mb-80">
                                <span>About us</span>
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="single-cat text-center mb-50">
                                <div class="cat-icon">
                                    <span><i class="fa fa-users"></i></span>
                                </div>
                                <div class="cat-cap">
                                    <h5><a href="services.html">Total customer</a></h5>
                                    <h2 data-toggle="counter-up"><%
                                try {
                                    Class.forName("oracle.jdbc.driver.OracleDriver");
                                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                                    String sql = "{?= call cuscount}";
                                    CallableStatement cs = con.prepareCall(sql);
                                    cs.registerOutParameter(1, Types.INTEGER);
                                    cs.execute();
                                    out.println(cs.getInt(1));
                                } catch (Exception e) {
                                    out.println(e.getMessage());
                                }
                                %></h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="single-cat text-center mb-50">
                                <div class="cat-icon">
                                    <span><i class="fa fa-truck"></i></span>
                                </div>
                                <div class="cat-cap">
                                    <h5><a href="services.html">Total Vehicle</a></h5>
                                    <h2 data-toggle="counter-up"><% try {
                                    Class.forName("oracle.jdbc.driver.OracleDriver");
                                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                                    String sql = "{?= call fy.cvehicle}";
                                    CallableStatement cs = con.prepareCall(sql);
                                    cs.registerOutParameter(1, Types.INTEGER);
                                    cs.execute();
                                    out.println(cs.getInt(1));
                                } catch (Exception e) {
                                    out.println(e.getMessage());
                                }
                                %></h2>
                                </div>
                            </div>
                        </div><div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="single-cat text-center mb-50">
                                <div class="cat-icon">
                                    <span><i class="fa fa-book"></i></span>
                                </div>
                                <div class="cat-cap">
                                    <h5><a href="services.html">Complete Booking</a></h5>
                                    <h2 data-toggle="counter-up"><% try {
                                    Class.forName("oracle.jdbc.driver.OracleDriver");
                                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                                    String sql = "{?= call fy.cbook}";
                                    CallableStatement cs = con.prepareCall(sql);
                                    cs.registerOutParameter(1, Types.INTEGER);
                                    cs.execute();
                                    out.println(cs.getInt(1));
                                } catch (Exception e) {
                                    out.println(e.getMessage());
                                }
                                %></h2>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Categories Area End -->
            <!--? About Area Start -->
            <div class="about-low-area padding-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="about-caption mb-50">
                                <!-- Section Tittle -->
                                <div class="section-tittle mb-35">
                                    <span>About Our Company</span>
                                    <h2>Safe fleet & Transport  Solutions That Saves our Valuable Time!</h2>
                                </div>
                                <p>Brook presents your services with flexible, convenient and cdpose layouts. You can select your favorite layouts & elements for cular ts with unlimited ustomization possibilities. Pixel-perfect replication of the designers is intended.</p>
                                <p>Brook presents your services with flexible, convefnient and chient anipurpose layouts. You can select your favorite layouts.</p>
                                <a href="about.html" class="btn">More About Us</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <!-- about-img -->
                            <div class="about-img ">
                                <div class="about-font-img">
                                    <img src="assets/img/gallery/about2.png" alt="">
                                </div>
                                <div class="about-back-img d-none d-lg-block">
                                    <img src="assets/img/gallery/about1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About Area End -->
            <!--? contact-form start -->
            
                        <!-- Contact wrapper -->
                        
            <!-- contact-form end -->
            <!--Team Ara Start -->
           
            <!-- Team Ara End -->
            <!--? Testimonial Start -->
            <div class="testimonial-area testimonial-padding section-bg" data-background="assets/img/gallery/section_bg04.jpg">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-xl-7 col-lg-7">
                            <!-- Section Tittle -->
                            <div class="section-tittle section-tittle2 mb-25">
                                <span>Clients Testimonials</span>
                                <h2>What Our Clients Say!</h2>
                            </div> 
                            <div class="h1-testimonial-active mb-70">
                                <!-- Single Testimonial -->
                                <div class="single-testimonial ">
                                    <!-- Testimonial Content -->
                                    <div class="testimonial-caption ">
                                        <div class="testimonial-top-cap">
                                            <p>Srem ipsum adolor dfsit amet, consectetur adipiscing elit, sed dox beiusmod tempor incci didunt ut labore et dolore magna aliqua. Quis cipsucm suspendisse ultrices gravida. Risus commodo vivercra maecenas accumsan lac.</p>
                                        </div>
                                        <!-- founder -->
                                        <div class="testimonial-founder d-flex align-items-center">
                                            <div class="founder-img">
                                                <img src="assets/img/gallery/Homepage_testi.png" alt="">
                                            </div>
                                            <div class="founder-text">
                                                <span>Jhaon smith</span>
                                                <p>Creative designer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Testimonial -->
                                <div class="single-testimonial ">
                                    <!-- Testimonial Content -->
                                    <div class="testimonial-caption ">
                                        <div class="testimonial-top-cap">
                                            <p>Srem ipsum adolor dfsit amet, consectetur adipiscing elit, sed dox beiusmod tempor incci didunt ut labore et dolore magna aliqua. Quis cipsucm suspendisse ultrices gravida. Risus commodo vivercra maecenas accumsan lac.</p>
                                        </div>
                                        <!-- founder -->
                                        <div class="testimonial-founder d-flex align-items-center">
                                            <div class="founder-img">
                                                <img src="assets/img/gallery/Homepage_testi.png" alt="">
                                            </div>
                                            <div class="founder-text">
                                                <span>Jhaon smith</span>
                                                <p>Creative designer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Start -->
                        <div class="col-xl-4 col-lg-5 col-md-8">
                            <div class="testimonial-form text-center">
                                <h3>Always listening, always understanding.</h3>
                                <input type="text" placeholder="Incoterms">
                                <button name="submit" class="submit-btn">Request a Quote</button>
                            </div>
                        </div>
                        <!-- Form End -->
                    </div>
                </div>
            </div>
            <!-- Testimonial End -->
            <!--? Blog Area Start -->
            <div class="home-blog-area section-padding30">
                <div class="container">
                    <!-- Section Tittle -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-tittle text-center mb-70">
                                <span>Our Recent news</span>
                                <h2>Tourist Blog</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="home-blog-single mb-30">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/gallery/blog01.png" alt="">
                                    </div>
                                </div>
                                <div class="blog-caption">
                                    <div class="blog-date text-center">
                                        <span>27</span>
                                        <p>SEP</p>
                                    </div>
                                    <div class="blog-cap">
                                        <ul>
                                            <li><a href="#"><i class="ti-user"></i> Jessica Temphers</a></li>
                                            <li><a href="#"><i class="ti-comment-alt"></i> 12</a></li>
                                        </ul>
                                        <h3><a href="blog_details.html">Here’s what you should know before.</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="home-blog-single mb-30">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/gallery/blog1.png" alt="">
                                    </div>
                                </div>
                                <div class="blog-caption">
                                    <div class="blog-date text-center">
                                        <span>27</span>
                                        <p>SEP</p>
                                    </div>
                                    <div class="blog-cap">
                                        <ul>
                                            <li><a href="#"><i class="ti-user"></i> Jessica Temphers</a></li>
                                            <li><a href="#"><i class="ti-comment-alt"></i> 12</a></li>
                                        </ul>
                                        <h3><a href="blog_details.html">Here’s what you should know before.</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="home-blog-single mb-30">
                                <div class="blog-img-cap">
                                    <div class="blog-img">
                                        <img src="assets/img/gallery/blog02.png" alt="">
                                    </div>
                                </div>
                                <div class="blog-caption">
                                    <div class="blog-date text-center">
                                        <span>27</span>
                                        <p>SEP</p>
                                    </div>
                                    <div class="blog-cap">
                                        <ul>
                                            <li><a href="#"><i class="ti-user"></i> Jessica Temphers</a></li>
                                            <li><a href="#"><i class="ti-comment-alt"></i> 12</a></li>
                                        </ul>
                                        <h3><a href="blog_details.html">Here’s what you should know before.</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Blog Area End -->
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
                                  <div class="logo">
                                <a href="index.jsp"><img src="assets/img/logo/truck3.png" width="150px" alt=""></a>
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
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

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