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
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src=
                "https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js">
        </script> 
        <style>
            /* 
    html5doctor.com Reset Stylesheet
    v1.6.1
    Last Updated: 2010-09-17
    Author: Richard Clark - http://richclarkdesign.com 
    Twitter: @rich_clark
            */

            html, body, div, span, object, iframe,
            h1, h2, h3, h4, h5, h6, p, blockquote, pre,
            abbr, address, cite, code,
            del, dfn, em, img, ins, kbd, q, samp,
            small, strong, sub, sup, var,
            b, i,
            dl, dt, dd, ol, ul, li,
            fieldset, form, label, legend,
            table, caption, tbody, tfoot, thead, tr, th, td,
            article, aside, canvas, details, figcaption, figure, 
            footer, header, hgroup, menu, nav, section, summary,
            time, mark, audio, video {
                margin:0;
                padding:0;
                border:0;
                outline:0;
                font-size:100%;
                vertical-align:baseline;
                background:transparent;
            }

            body {
                line-height:1;
            }

            article,aside,details,figcaption,figure,
            footer,header,hgroup,menu,nav,section { 
                display:block;
            }

            nav ul {
                list-style:none;
            }

            blockquote, q {
                quotes:none;
            }

            blockquote:before, blockquote:after,
            q:before, q:after {
                content:'';
                content:none;
            }

            a {
                margin:0;
                padding:0;
                font-size:100%;
                vertical-align:baseline;
                background:transparent;
            }

            /* change colours to suit your needs */
            ins {
                background-color:#ff9;
                color:#000;
                text-decoration:none;
            }

            /* change colours to suit your needs */
            mark {
                background-color:#ff9;
                color:#000; 
                font-style:italic;
                font-weight:bold;
            }

            del {
                text-decoration: line-through;
            }

            abbr[title], dfn[title] {
                border-bottom:1px dotted;
                cursor:help;
            }

            table {
                border-collapse:collapse;
                border-spacing:0;
            }

            /* change border colour to suit your needs */
            hr {
                display:block;
                height:1px;
                border:0;   
                border-top:1px solid #cccccc;
                margin:1em 0;
                padding:0;
            }

            input, select {
                vertical-align:middle;
            }

            .container{
                height: 100vh;
            }

            .franchiseinfo .companyinfo{
                display: block;
                height:30%;
            }
            .main_head{
                display: block;
                font-size: 20px;
                border: 2px solid black;
                text-align: center;
                margin: 10px 10px 0px 10px;
            }
            li{
                display: block;
                padding: 8px 25px;
            }
            .subbody{
                display: block;
                height:80%;
                border: 2px solid black;
                margin: 0px 10px 10px 10px;
            }
            .commissioninfo{
                margin: 10px;
                border: 2px solid black;
            }
            .foot{
                margin: 10px;
                border: 2px solid black;
                padding: 10px;
            }
            .upload_system{
                padding: 10px;
            }
            .abcd > tr > td{
                border: 2px black solid;
                padding: 4px;
            }
            table.center {
                margin-left:auto; 
                margin-right:auto;
            }
            .trData{
                display: none;
            }
            @media print {
                .container{
                    height: 100vh;
                }

                .franchiseinfo .companyinfo{
                    display: block;
                    height:30%;
                }
                .main_head{
                    display: block;
                    font-size: 20px;
                    border: 2px solid black;
                    text-align: center;
                    margin: 10px 10px 0px 10px;
                }
                li{
                    display: block;
                    padding: 8px 25px;
                }
                .subbody{
                    display: block;
                    height:80%;
                    border: 2px solid black;
                    margin: 0px 10px 10px 10px;
                }
                .commissioninfo{
                    margin: 10px;
                    border: 2px solid black;
                }
                .foot{
                    margin: 10px;
                    border: 2px solid black;
                    padding: 10px;
                }
                .upload_system , .table_auto , .trData{
                    display: none;
                }
            }
        </style>
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
                        <a href="index.html" class="nav-item nav-link "><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
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
                            <a href="booking.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-book me-2"></i>Freight Booking</a>
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
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-file-invoice me-2"></i>Bills</a>
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
                                <%String name = (String) session.getAttribute("username");%>
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

                <br>
                <div class="container">
                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="upload_system">
                        <input type="file" id="file" class="btn btn-primary" name="csv" accept=".csv">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" id ="button1" class="btn btn-primary">Upload </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button id="button11" class="btn btn-primary">Generate PDF</button>
                        <div>

                            <!-- <button id="pdf-gen">pdf</button> -->
                        </div>
                    </div>

                    <div class="table_auto" class="table-responsive" >
                        <table class="abcd center" class="table text-start align-middle table-bordered table-hover mb-0" id="abcd"></table>  
                    </div>
                    <div class="franchiseinfo" id="franchiseinfo"> 

                        <div class="container-fluid pt-4 px-4">
                            <div class="row g-4">
                                <div class="col-sm-12 col-xl-6">
                                    <div class="bg-light rounded h-100 p-4"> 

                                        <div id="bill">
                                            <div class="franchise subbody" id="#franchise"><div class="main_head" id="main_head">
                                                    <div class="logo">
                                                        <a href="index.html"><img src="img/logo/truck3.png" width="150px" alt=""></a>
                                                    </div> AG TRANSPRORT & Fleet Managment
                                                </div>
                                                <ol class="franchise table">

                                                    <li>
                                                        <b> Invoice Date:</b><script> document.write(new Date().toLocaleDateString());</script>
                                                    </li>
                                                    <li><b>Booking Id :</b> <span id="a"></span></li>
                                                    <li><b>Booking Date :</b> <span id="c"></span></li>
                                                    <li><b>Customer Name :</b> <span id="b"></span></li>
                                                    <li><b>Pickup :</b> <span id="d"></span></li>
                                                    <li><b>Drop :</b> <span id="e"></span></li>
                                                    <li><b>Phone Number :</b> <span id="f"></span></li>
                                                    <li><b>Container  Number :</b> <span id="g"></span></li>
                                                    <li><b> Goods Weight :</b> <span id="h"></span></li>
                                                    <li><b>Total Km:</b> <span id="i"></span></li>
                                                    <li><b>vehicle No:</b> <span id="j"></span></li>
                                                    <li><b>Rent Per Km:</b> <span id="k"></span></li>


                                                </ol>
                                            </div>

                                            <div class="companyinfo" id="companyinfo">
                                                <div class="main_head" id="main_head">
                                                    Company Information
                                                </div>
                                                <div class="company subbody">
                                                    <ol class="franchise table">
                                                        <li><b>Company Name : </b> CashLu Enterprises</li>
                                                        <li><b>Company Adress : </b> Office No. 803, Primac Tower, DN-36,Sec-V,SaltLake,Kolkata-70091</li>
                                                        <li><b>PAN : </b> AALFC0647E</li>
                                                        <li><b>GST : </b> 19AALFC0647E </li>
                                                    </ol>
                                                </div>
                                            </div>
                                            <div class="commissioninfo" id="commissioninfo">
                                                <ol class="comission table">
                                                    <li><b>Total Payment :</b> <span id = 'l'></span> /-</li>
                                                    <li><b>Total Payment in words :</b> <span id = 'totalCommissionInWords'></span>  only/-</li>
                                                </ol>
                                            </div>
                                            <footer class="foot" id="foot">
                                                <b> The above amount is subject to TDS deduction @5%. TDS certificate will be provided at the end of the end 
                                                    of the quarter in which the payment is made.</b> 
                                            </footer>

                                        </div></div></div></div></div>
                    </div>
                    <% out.println("<script>\n"
                                + "        $(document).ready(function(){\n"
                                + "    $('#button1').click(function(){\n"
                                + "         //get file object\n"
                                + "    var file = document.getElementById('file').files[0];\n"
                                + "    if (file) {\n"
                                + "        // create reader\n"
                                + "        var reader = new FileReader();\n"
                                + "        reader.readAsText(file);\n"
                                + "        reader.onload = function(e) {\n"
                                + "            // browser completed reading file - display it\n"
                                + "            var fileText = e.target.result;\n"
                                + "            \n"
                                + "           var tabContent = fileText.split('\\n');\n"
                                + "           var tableContFinal = tabContent.map(obj=>{\n"
                                + "                var trCont = obj.split(',');\n"
                                + "                console.log(trCont);\n"
                                + "                trContDom = trCont.map(inObj=>{\n"
                                + "                    return \"<td>\"+inObj+\"</td>\";\n"
                                + "                }).join('');\n"
                                + "                return `<tr>${trContDom}<td><input class=\\'trData\\' value=\\'${obj}\\' /><button onclick=\"renderData(this)\" class=\"btn btn-primary\" >Show</button></td></tr>`;\n"
                                + "            }).join('');\n"
                                + "            $(\"#abcd\").html(tableContFinal);\n"
                                + "        };\n"
                                + "    }\n"
                                + " \n"
                                + "\n"
                                + "\n"
                                + "        // var reader = new FileReader();\n"
                                + "        // if ( ! window.FileReader ) {\n"
                                + "		// 	return alert( 'FileReader API is not supported by your browser.' );\n"
                                + "		// }\n"
                                + "		// var $i = $( '#file' ), // Put file input ID here\n"
                                + "		// 	input = $i[0]; // Getting the element from jQuery\n"
                                + "		// if ( input.files && input.files[0] ) {\n"
                                + "		// 	file = input.files[0]; // The file\n"
                                + "		// 	fr = new FileReader(); // FileReader instance\n"
                                + "		// 	fr.onload = function () {\n"
                                + "		// 		// Do stuff on onload, use fr.result for contents of file\n"
                                + "		// 		console.log( file) ;\n"
                                + "		// 	};\n"
                                + "		// var fileText = fr.readAsText( file );\n"
                                + "			\n"
                                + "		// } else {\n"
                                + "		// 	// Handle errors here\n"
                                + "		// 	alert( \"File not selected or browser incompatible.\" )\n"
                                + "		// }\n"
                                + "    //   var  myfile = input.files[0];\n"
                                + "    //     var myfileContent = fr.readAsText(file);\n"
                                + "    //     console.log(myFile);\n"
                                + "    });\n"
                                + "    \n"
                                + "});\n"
                                + "\n"
                                + "var renderData = (element)=>{\n"
                                + "    var dataString = $(element).parent('td').find('.trData').val();\n"
                                + "    var dataStringArray = dataString.split(',');\n"
                                + "    $(\"#a\").html(dataStringArray[0]);\n"
                                + "    $(\"#b\").html(dataStringArray[1]);\n"
                                + "    $(\"#c\").html(dataStringArray[2]);\n"
                                + "    $(\"#d\").html(dataStringArray[3]);\n"
                                + "    $(\"#e\").html(dataStringArray[4]);\n"
                                + "    $(\"#f\").html(dataStringArray[5]);\n"
                                + "    $(\"#g\").html(dataStringArray[6]);\n"
                                + "    $(\"#h\").html(dataStringArray[7]);\n"
                                + "    $(\"#i\").html(dataStringArray[8]);\n"
                                + "    $(\"#j\").html(dataStringArray[9]);\n"
                                + "    $(\"#k\").html(dataStringArray[10]);\n"
                                + "    var valueNew = dataStringArray[11];\n"
                                + "    $('#l').html(valueNew);    \n"
                                + "    console.log(dataStringArray);\n"
                                + "\n"
                                + "function convertNumberToWords(amount) {\n"
                                + "    var words = new Array();\n"
                                + "    words[0] = '';\n"
                                + "    words[1] = 'one';\n"
                                + "    words[2] = 'two';\n"
                                + "    words[3] = 'three';\n"
                                + "    words[4] = 'four';\n"
                                + "    words[5] = 'five';\n"
                                + "    words[6] = 'six';\n"
                                + "    words[7] = 'seven';\n"
                                + "    words[8] = 'eight';\n"
                                + "    words[9] = 'nine';\n"
                                + "    words[10] = 'ten';\n"
                                + "    words[11] = 'eleven';\n"
                                + "    words[12] = 'twelve';\n"
                                + "    words[13] = 'thirteen';\n"
                                + "    words[14] = 'fourteen';\n"
                                + "    words[15] = 'fifteen';\n"
                                + "    words[16] = 'sixteen';\n"
                                + "    words[17] = 'seventeen';\n"
                                + "    words[18] = 'eighteen';\n"
                                + "    words[19] = 'nineteen';\n"
                                + "    words[20] = 'twenty';\n"
                                + "    words[30] = 'thirty';\n"
                                + "    words[40] = 'forty';\n"
                                + "    words[50] = 'fifty';\n"
                                + "    words[60] = 'sixty';\n"
                                + "    words[70] = 'seventy';\n"
                                + "    words[80] = 'eighty';\n"
                                + "    words[90] = 'ninety';\n"
                                + "    amount = amount.toString();\n"
                                + "    var atemp = amount.split(\".\");\n"
                                + "    var number = atemp[0].split(\",\").join(\"\");\n"
                                + "    var n_length = number.length;\n"
                                + "    var words_string = \"\";\n"
                                + "    if (n_length <= 9) {\n"
                                + "        var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);\n"
                                + "        var received_n_array = new Array();\n"
                                + "        for (var i = 0; i < n_length; i++) {\n"
                                + "            received_n_array[i] = number.substr(i, 1);\n"
                                + "        }\n"
                                + "        for (var i = 9 - n_length, j = 0; i < 9; i++, j++) {\n"
                                + "            n_array[i] = received_n_array[j];\n"
                                + "        }\n"
                                + "        for (var i = 0, j = 1; i < 9; i++, j++) {\n"
                                + "            if (i == 0 || i == 2 || i == 4 || i == 7) {\n"
                                + "                if (n_array[i] == 1) {\n"
                                + "                    n_array[j] = 10 + parseInt(n_array[j]);\n"
                                + "                    n_array[i] = 0;\n"
                                + "                }\n"
                                + "            }\n"
                                + "        }\n"
                                + "        value = \"\";\n"
                                + "        for (var i = 0; i < 9; i++) {\n"
                                + "            if (i == 0 || i == 2 || i == 4 || i == 7) {\n"
                                + "                value = n_array[i] * 10;\n"
                                + "            } else {\n"
                                + "                value = n_array[i];\n"
                                + "            }\n"
                                + "            if (value != 0) {\n"
                                + "                words_string += words[value] + \" \";\n"
                                + "            }\n"
                                + "            if ((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)) {\n"
                                + "                words_string += \"crores \";\n"
                                + "            }\n"
                                + "            if ((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)) {\n"
                                + "                words_string += \"lakhs \";\n"
                                + "            }\n"
                                + "            if ((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)) {\n"
                                + "                words_string += \"thousand \";\n"
                                + "            }\n"
                                + "            if (i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)) {\n"
                                + "                words_string += \"hundred and \";\n"
                                + "            } else if (i == 6 && value != 0) {\n"
                                + "                words_string += \"hundred \";\n"
                                + "            }\n"
                                + "        }\n"
                                + "        words_string = words_string.split(\"  \").join(\" \");\n"
                                + "}\n"
                                + "return  words_string.charAt(0).toUpperCase() + words_string.slice(1);\n"
                                + "\n"
                                + "}\n"
                                + "var finalWord =  convertNumberToWords(valueNew);\n"
                                + "console.log(finalWord);\n"
                                + "$('#totalCommissionInWords').html(finalWord);\n"
                                + "    \n"
                                + "};\n"
                                + "    </script>");%>
                    <script>
                        var button = document.getElementById("button11");
                        var makepdf = document.getElementById("bill");

                        button.addEventListener("click", function () {
                            html2pdf().from(makepdf).save();
                        });
                    </script>
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