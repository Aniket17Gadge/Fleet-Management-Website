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
        <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>

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
                        <a href="adashboard.jsp" class="nav-item nav-link "><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-truck me-2"></i>Vehicles</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="rvehicle.jsp" class="dropdown-item">Register Vehicle</a>
                                <a href="advehicle.jsp" class="dropdown-item">Add Vehicle</a>

                            </div>
                        </div></div>
                    <div class="navbar-nav w-100">

                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-id-card me-2"></i>Drivers</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="Adddriver.jsp" class="dropdown-item">Add Drivers</a>
                                <a href="viewdriver.jsp" class="dropdown-item">View Driver</a>

                            </div>
                        </div></div>
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown">
                            <a href="booking.jsp" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-book me-2"></i>Freight Booking</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                
                                <a href="booking.jsp" class="dropdown-item">View Booking</a>
                            </div></div></div>
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-users me-2"></i>Manage Customer</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="viewcustomer.jsp" class="dropdown-item">View Customer</a>
                                
                            </div></div></div>
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-file-invoice me-2"></i>Bills</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="Billgen.jsp" class="dropdown-item">Make Bills</a>
                                <a href="billentry.jsp" class="dropdown-item">Bill Entry</a>
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
                               <%String name = (String) session.getAttribute("username"); %>
                               <span class="d-none d-lg-inline-flex"><%=name%></span>
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



                <!-- form End -->


                <!-- Sales Chart Start -->

                <!-- Sales Chart End -->


                <!-- Recent Sales Start -->
                <%
                    try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                        String sql = "{call fy.disbook(?,?,?,?,?,?,?,?,?,?,?,?,?)}";
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

                        cs.executeQuery();

                        ResultSet rs = (ResultSet) cs.getObject(1);

                        out.println("    <div class=\"container-fluid pt-4 px-4\">\n"
                                + "                    <div class=\"bg-light text-center rounded p-4\">\n"
                                + "                        <div class=\"d-flex align-items-center justify-content-between mb-4\">\n"
                                + "                            <h6 class=\"mb-0\">Recent Booking</h6>\n"
                                + "                            <a href=\"\">Show All</a>\n"
                                + " <button type=\"submit\" class=\"btn btn-primary\" id=\"export1\" onclick=\"tableToCSV()\">Export</button>"
                                + "                        </div>\n"
                                + "                        <div class=\"table-responsive\">\n"
                                + "                            <table class=\"table text-start align-middle table-bordered table-hover mb-0\" id=\"book\">\n"
                                + "                                <thead>\n"
                                + "                                    <tr class=\"text-dark\">\n"
                                + "                                        <th scope=\"col\">Booking Id</th>"
                                + "                                        <th scope=\"col\">Username</th>"
                                + "                                        <th scope=\"col\">Date</th>"
                                + "                                        <th scope=\"col\">Pickup</th>"
                                + "                                        <th scope=\"col\">Drop</th>"
                                + "                                        <th scope=\"col\">Phone Number</th>"
                                + "                                        <th scope=\"col\">Container Number</th>"
                                + "                                        <th scope=\"col\">Goods Weight</th>"
                                + "                                        <th scope=\"col\">Total Km</th>"
                                + "                                        <th scope=\"col\">Vehicle No</th>"
                                + "                                        <th scope=\"col\">Rent per Km</th>"
                                + "                                        <th scope=\"col\">Total payment</th>"
                              
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
                            String i = rs.getString(9);
                            String j = rs.getString(10);
                            String k = rs.getString(11);
                            String l = rs.getString(12);

                            out.println("<tr>\n"
                                    + "                                        <td>" + a + "</td>\n"
                                    + "                                        <td>" + b + "</td>\n"
                                    + "                                        <td>" + c + "</td>\n"
                                    + "                                        <td>" + d + "</td>\n"
                                    + "                                        <td>" + e + "</td>\n"
                                    + "                                        <td>" + f + "</td>\n"
                                    + "                                        <td>" + g + "</td>\n"
                                    + "                                        <td>" + h + "</td>\n"
                                    + "                                        <td>" + i + "</td>\n"
                                    + "                                        <td>" + j + "</td>\n"
                                    + "                                        <td>" + k + "</td>\n"
                                    + "                                        <td>" + l + "</td>\n"
                                    + "                                        <td>" + "<a href='delbook.jsp?a=" + a + "'><i class='fa fa-trash' style='color:#ff0805'></i></a></button>" + "</td><tr>");

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
                <script type="text/javascript">
                    function tableToCSV() {

                    // Variable to store the final csv data
                    var csv_data = [];
                    // Get each row data
                    var rows = document.getElementsByTagName('tr');
                    for (var i = 0; i < rows.length; i++) {

                    // Get each column data
                    var cols = rows[i].querySelectorAll('td,th');
                    // Stores each csv row data
                    var csvrow = [];
                    for (var j = 0; j < cols.length; j++) {

                    // Get the text data of each cell
                    // of a row and push it to csvrow
                    csvrow.push(cols[j].innerHTML);
                    }

                    // Combine each column value with comma
                    csv_data.push(csvrow.join(","));
                    }
                    csv_data = csv_data.join('');
                    // Combine each row data with new line character


                    // Call this function to download csv file 
                    downloadCSVFile(csv_data);
                    }

                    function downloadCSVFile(csv_data) {

                    // Create CSV file object and feed
                    // our csv_data into it
                    CSVFile = new Blob([csv_data], {
                    type: "text/csv"
                    });
                    // Create to temporary link to initiate
                    // download process
                    var temp_link = document.createElement('a');
                    // Download csv file
                    temp_link.download = "GfG.csv";
                    var url = window.URL.createObjectURL(CSVFile);
                    temp_link.href = url;
                    // This link should not be displayed
                    temp_link.style.display = "none";
                    document.body.appendChild(temp_link);
                    // Automatically click the link to
                    // trigger download
                    temp_link.click();
                    document.body.removeChild(temp_link);
                    }
                <script>                <script type="text/javascript">
                    function tableToCSV() {

                            // Variable to store the final csv data
                            var csv_data = [];
                    // Get each row data
                    var rows = document.getElementsByTagName('tr');
                    for (var i = 0; i < rows.length; i++) {

                    // Get each column data
                    var cols = rows[i].querySelectorAll('td,th');
// Stores each csv row data
var csvrow = [];
                    for (var j = 0; j < cols.length; j++) {

// Get the text data of each cell
                    // of a row and push it to csvrow
                    csvrow.push(cols[j].innerHTML);
}
                            
                    // Combine each column value with comma
                    csv_data.push(csvrow.join(","));
                    }
csv_data = csv_data.join('\n');
// Combine each row data with new line character


// Call this function to download csv file 
        downloadCSVFile(csv_data);
        
        }
        
                    function downloadCSVFile(csv_data) {

                    // Create CSV file object and feed
                    // our csv_data into it
        CSVFile = new Blob([csv_data], {
                    type: "text/csv"
                    });
                    
                    // Create to temporary link to initiate
                    // download process
                    var temp_link = document.createElement('a');
                    
                    // Download csv file
                    temp_link.download = "GfG.csv";
                    var url = window.URL.createObjectURL(CSVFile);
                    temp_link.href = url;
                                
        // This link should not be displayed
        temp_link.style.display = "none";
        document.body.appendChild(temp_link);
        
        // Automatically click the link to
        // trigger download
        temp_link.click();
                        document.body.removeChild(temp_link);
                                }
                </script>                 
                <script type="text/javascript">
function tableToCSV() {

// Variable to store the final csv data
var csv_data = [];
// Get each row data
                    var rows = document.getElementsByTagName('tr');
                    for (var i = 0; i < rows.length; i++) {

// Get each column data
                    var cols = rows[i].querySelectorAll('td,th');         // Stores each csv row data
var csvrow = [];
                    for (var j = 0; j < cols.length; j++) {

                    // Get the text data of each cell
                    // ofa row and push it to csvrow
            csvrow.push(cols[j].innerHTML);
                    }
                                    
                    // Combine each column value with comma
                    csv_data.push(csvrow.join(","));
                                    
            }
                    csv_data = csv_data.join('\n');
                    // Combine each row data with new line character
                                    
                    // Call this function to download csv file 
                    downloadCSVFile(csv_data);
                                    
                    }
                                    
                    function downloadCSVFile(csv_data) {

                    // Create CSV file object and feed
                    // our csv_data into it
                    CSVFile = new Blob([csv_data], {
                    type: "text/csv"
});
                    
    // Create to temporary link to initiate
        // download process
    var temp_link = document.createElement('a');
                    
    // Download csv file
        temp_link.download = "GfG.csv";
    var url = window.URL.createObjectURL(CSVFile);
        temp_link.href = url;
                        
        // This link should not be displayed
    temp_link.style.display = "none";
        document.body.appendChild(temp_link);
                            
            // Automatically click the link to
                // trigger download
                temp_link.click();
                document.body.removeChild(temp_link);
            }
                    </script>              <!--                <div class="container-fluid pt-4 px-4">
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