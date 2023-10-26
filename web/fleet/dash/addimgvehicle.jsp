
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
        String d = request.getParameter("t");
        String n = request.getParameter("n");
        

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
            CallableStatement cs = con.prepareCall("{call fy.addimgvehicle(?,?,?,?,?)}");

            cs.setString(1, a);
            cs.setString(2, b);
            cs.setString(3, c);
            cs.setString(4, d);
            cs.setString(5, n);
            
            
            cs.execute();

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Data Added Suessfully');");
            out.println("location='advehicle.jsp';");
            out.println("</script>");

        } 
        catch (Exception ex) {
            out.println(ex.getMessage());
        }

    %>
    </body>
</html>
