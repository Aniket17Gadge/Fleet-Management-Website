<%-- 
    Document   : index.jsp
    Created on : 4 Sep, 2022, 1:10:57 PM
    Author     : panma
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>DASHMIN - Bootstrap Admin Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="index.html" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>DASHMIN</h3>
                    </a>

                    <div class="navbar-nav w-100">

                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" ><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <div class="dropdown-menu bg-transparent border-0">


                            </div>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-truck me-2"></i>Vehicles</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="rvehicle.jsp" class="dropdown-item">Register Vehicle</a>
                                    <a href="advehicle.jsp" class="dropdown-item">Add Vehicle</a>
                                    <a href="uprvehicle.jsp" class="dropdown-item">Edit</a>

                                </div>
                            </div></div>
                        <div class="navbar-nav w-100">

                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle"  data-bs-toggle="dropdown"><i class="fa fa-id-card me-2"></i>Drivers</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">Add Drivers</a>
                                    <a href="typography.html" class="dropdown-item">View Driver</a>

                                </div>
                            </div></div>
                        <div class="navbar-nav w-100">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-book me-2"></i>Freight Booking</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">Add Booking</a>
                                    <a href="typography.html" class="dropdown-item">View Booking</a>
                                </div></div></div>
                        <div class="navbar-nav w-100">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-users me-2"></i>Manage Customer</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">View Customer</a>
                                    <a href="typography.html" class="dropdown-item"> Customer Freight Booking</a>
                                </div></div></div>
                        <div class="navbar-nav w-100">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-file-invoice me-2"></i>Bills</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">Add  Bills</a>
                                    <a href="typography.html" class="dropdown-item">view Bills</a>
                                </div></div></div>
                        <div class="navbar-nav w-100">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-gas-pump me-2"></i>Fuels</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="button.html" class="dropdown-item">Fuel Enty</a>
                                    <a href="typography.html" class="dropdown-item">Fuel Record</a>
                                </div></div></div>


                </nav>
            </div>
            <!-- Sidebar End -->


            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                    <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                    </a>
                    <a href="#" class="sidebar-toggler flex-shrink-0">
                        <i class="fa fa-bars"></i>
                    </a>
                    <form class="d-none d-md-flex ms-4">
                        <input class="form-control border-0" type="search" placeholder="Search">
                    </form>
                    <div class="navbar-nav align-items-center ms-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <i class="fa fa-envelope me-lg-2"></i>
                                <span class="d-none d-lg-inline-flex">Message</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                        <div class="ms-2">
                                            <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                            <small>15 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                        <div class="ms-2">
                                            <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                            <small>15 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                        <div class="ms-2">
                                            <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                            <small>15 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item text-center">See all message</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <i class="fa fa-bell me-lg-2"></i>
                                <span class="d-none d-lg-inline-flex">Notificatin</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">
                                    <h6 class="fw-normal mb-0">Profile updated</h6>
                                    <small>15 minutes ago</small>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <h6 class="fw-normal mb-0">New user added</h6>
                                    <small>15 minutes ago</small>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item">
                                    <h6 class="fw-normal mb-0">Password changed</h6>
                                    <small>15 minutes ago</small>
                                </a>
                                <hr class="dropdown-divider">
                                <a href="#" class="dropdown-item text-center">See all notifications</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                <span class="d-none d-lg-inline-flex">John Doe</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="#" class="dropdown-item">My Profile</a>
                                <a href="#" class="dropdown-item">Settings</a>
                                <a href="#" class="dropdown-item">Log Out</a>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- Navbar End -->


                <!-- form Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light rounded h-100 p-4">
                                <h6 class="mb-4">Basic Form</h6>
                                <form action="addvehicle.jsp"><div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Vehicle Number</label>
                                        <input type="text" name="a"  class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">    
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Vehicle Name</label>
                                        <input type="text" name="b"  class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">    
                                    </div>

                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Model year</label>
                                        <input type="number" min="2000"  max="3000" name="c"   class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">    
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Chassis Number</label>
                                        <input type="text"  name="d"  class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">    
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Company</label>
                                        <select class="form-select mb-3" name="e"  aria-label="Default select example">
                                            <option selected>TATA</option>
                                            <option value="1">Ashok Leyland</option>
                                            <option value="2">Bharat Benz</option>
                                            <option value="3">Mahindra</option>
                                        </select></div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Registration Exp.date</label>
                                        <input type="date" name="f"   class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">    
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Insurance Exp.date</label>
                                        <input type="date" name="g"  class="form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp">    
                                    </div>                                        
                                    <label for="exampleInputEmail1" class="form-label">Gross Weight</label>
                                    <div class="input-group mb-3">

                                        <br>
                                        <input type="number" name="h"  class="form-control" placeholder="Recipient's username"
                                               aria-label="Recipient's username" aria-describedby="basic-addon2">
                                        <span class="input-group-text" id="basic-addon2">Tone</span>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Add</button>

                                    <!--                                <div class="mb-3">
                                                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                                                        <input type="password" class="form-control" id="exampleInputPassword1">
                                                                    </div>
                                                                    <div class="mb-3 form-check">
                                                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                                                    </div>
                                                                    <button type="submit" class="btn btn-primary">Sign in</button>-->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- form End -->


                <!-- Sales Chart Start -->

                <!-- Sales Chart End -->


                <!-- Recent Sales Start -->
                <br>
                <%
                    try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                        String sql = "{call FY.dispvehicle2(?,?,?,?,?,?,?,?,?)}";
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

                        cs.executeQuery();

                        ResultSet rs = (ResultSet) cs.getObject(1);

                        out.println("<div class=\"col-12\">\n"
                                + "                        <div class=\"bg-light rounded h-100 p-4\">\n"
                                + "                            <h6 class=\"mb-4\">Responsive Table</h6>\n"
                                + "                            <div class=\"table-responsive\">\n"
                                + "                                <table class=\"table\">\n"
                                + "                                    <thead>"
                                + "                                    <tr class=\"text-dark\">\n"
                                + "                                        <th scope=\"col\"><input class=\"form-check-input\" type=\"checkbox\"></th>\n"
                                + "                                        <th scope=\"col\">RC Number</th>\n"
                                + "                                        <th scope=\"col\">Name</th>\n"
                                + "                                        <th scope=\"col\">Year</th>\n"
                                + "                                        <th scope=\"col\">chassis Number</th>\n"
                                + "                                        <th scope=\"col\">Company</th>\n"
                                + "                                        <th scope=\"col\">Registration Exp.Date</th>\n"
                                + "                                        <th scope=\"col\">Insurance Exp.Date</th>\n"
                                + "                                        <th scope=\"col\">Gross Weight</th>\n"
                                + "                                        <th scope=\"col\">Edit</th>\n"
                                + "                                        <th scope=\"col\">Delete</th>\n"
                                + "                                    </tr>\n"
                                + "                                </thead>\n"
                                + "                                <tbody>");
                        while (rs.next()) {
                            String a = rs.getString(1);
                            String b = rs.getString(2);
                            String c = rs.getString(3);
                            String d = rs.getString(4);
                            String e = rs.getString(5);
                            String f = rs.getString(6);
                            String g = rs.getString(7);
                            String h = rs.getString(8);
                            out.println("<tr>\n"
                                    + "                                        <td><input class=\"form-check-input\" type=\"checkbox\"></td>\n"
                                    + "                                        <td>" + a + "</td>\n"
                                    + "                                        <td>" + b + "</td>\n"
                                    + "                                        <td>" + c + "</td>\n"
                                    + "                                        <td>" + d + "</td>\n"
                                    + "                                        <td>" + e + "</td>\n"
                                    + "                                        <td>" + f + "</td>\n"
                                    + "                                        <td>" + g + "</td>\n"
                                    + "                                        <td>" + h + "</td>\n"
                                    + "                                        <td>" + "<a href='uprvehicle.jsp?a=" + a + "'><i class='fa fa-edit'  ></i></a></button>" + "</td><td>" + "<a href='delrvehicle.jsp?a=" + a + "'><i class='fa fa-trash' style='color:#ff0805'></i></a></button>" + "</td><tr>");

                        }
                        out.println("  </tbody>\n"
                                + "                            </table>\n"
                                + "                        </div>\n"
                                + "                    </div>\n"
                                + "                </div>");

                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }

                %>

                <!--                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-light text-center rounded p-4">
                                        <div class="d-flex align-items-center justify-content-between mb-4">
                                            <h6 class="mb-0">Recent Salse</h6>
                                            <a href="">Show All</a>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table text-start align-middle table-bordered table-hover mb-0">
                                                <thead>
                                                    <tr class="text-dark">
                                                        <th scope="col"><input class="form-check-input" type="checkbox"></th>
                                                        <th scope="col">Name</th>
                                                        <th scope="col">RC Number</th>
                                                        <th scope="col">Year</th>
                                                        <th scope="col">chassis Number</th>
                                                        <th scope="col">Company</th>
                                                        <th scope="col">Registration Exp.Date</th>
                                                        <th scope="col">Insurance Exp.Date</th>
                                                        <th scope="col">Gross Weight</th>
                                                        <th scope="col">Edit</th>
                                                        <th scope="col">Delete</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><input class="form-check-input" type="checkbox"></td>
                                                        <td>01 Jan 2045</td>
                                                        <td>INV-0123</td>
                                                        <td>Jhon Doe</td>
                                                        <td>$123</td>
                                                        <td>Paid</td>
                                                        <td>Jhon Doe</td>
                                                        <td>$123</td>
                                                        <td>Paid</td>
                                                        <td><a class="btn btn-sm btn-primary" href="up"><i class="fa fa-edit me-2"></i></a></td>
                                                        <td><a class="btn btn-sm btn-primary" href=""><i class="fa fa-trash me-2"></i></a></td>
                                                    </tr>
                
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>-->
                <!-- Recent Sales End -->



                <!-- Widgets End -->


                <!-- Footer Start -->

                <!-- Content End -->


                <!-- Back to Top -->
                <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
            </div>

            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="lib/chart/chart.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/tempusdominus/js/moment.min.js"></script>
            <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
            <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
    </body>

</html>