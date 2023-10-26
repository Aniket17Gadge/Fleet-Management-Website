<%-- 
    Document   : delbook
    Created on : 12 Sep, 2022, 7:48:44 PM
    Author     : panma
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            try {

                String bpdf = request.getParameter("a");

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                String sql = "{ call fy.delbillentry(?)}";
                CallableStatement cs = con.prepareCall(sql);
                cs.setString(1, bpdf);
                cs.execute();

                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data Deleted Scuessfuly');");
                out.println("location='billentry.jsp';");
                out.println("</script>");
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
