
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String a = request.getParameter("a");
            String b = request.getParameter("b");

            String c = request.getParameter("c");

            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                CallableStatement cs = con.prepareCall("{call adduser(?,?,?)}");

                cs.setString(1, a);
                cs.setString(2, b);
                cs.setString(3, c);

                cs.execute();

                out.println("<script type=\"text/javascript\">");
                out.println("alert('customer register Suessfully');");
                out.println("location='clogin.jsp';");
                out.println("</script>");

            } catch (Exception ex) {
                out.println(ex.getMessage());
            }

        %>
    </body>
</html>
