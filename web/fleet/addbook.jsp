
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
            String d = request.getParameter("d");
            String e = request.getParameter("e");
            String f = request.getParameter("ff");
            String g = request.getParameter("g");
            String h = request.getParameter("h");
            String i = request.getParameter("i");
            String j = request.getParameter("j");
            String k = request.getParameter("k");

            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                CallableStatement cs = con.prepareCall("{call fy.addbook(?,?,?,?,?,?,?,?,?,?,?)}");

                cs.setString(1, a);
                cs.setString(2, b);
                cs.setString(3, c);
                cs.setString(4, d);
                cs.setString(5, e);
                cs.setString(6, f);
                cs.setString(7, g);
                cs.setString(8, h);
                cs.setString(9, i);
                cs.setString(10, j);
                cs.setString(11, k);

                cs.execute();

                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data Added Suessfully');");
                out.println("location='services1.jsp';");
                out.println("</script>");

            } catch (Exception ex) {
                out.println(ex.getMessage());
            }

        %>
    </body>
</html>
