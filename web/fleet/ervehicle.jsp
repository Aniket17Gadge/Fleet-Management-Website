<%-- 
    Document   : ervehicle
    Created on : 4 Sep, 2022, 5:21:58 PM
    Author     : panma
--%>
<%@page import="java.sql.Types"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <% 
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");

                
                String a = request.getParameter("b");
                String b = request.getParameter("c");
                String c = request.getParameter("d");
                String d = request.getParameter("a");
                
               
                CallableStatement cs = con.prepareCall("{call FY.UPDATEVEHICLE2(?,?,?,?)}");
                
                cs.setString(1, a);
                cs.setString(2, b);
                cs.setString(3, c);
                cs.setString(4, d);
                
                

                cs.execute();

                out.print("<script>");
                out.print("alert('data Updated Successfully');");
                out.print("location='rvehicle.jsp';");
                out.print("</script>");

            }
            catch(Exception e) {
                out.println(e.getMessage());
            }

        %>
    </body>
</html>
