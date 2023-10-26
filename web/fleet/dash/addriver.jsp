<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>


    <%
        String dname = request.getParameter("a");
        String jdate = request.getParameter("b");
        int Age = Integer.parseInt(request.getParameter("c"));
        String Ldate = request.getParameter("d");
        int sala = Integer.parseInt(request.getParameter("e"));

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
            CallableStatement cs = con.prepareCall("{call fy.ADDDRIVER1(?,?,?,?,?)}");

            cs.setString(1, dname);
            cs.setString(2, jdate);
            cs.setInt(3, Age);
            cs.setString(4, Ldate);
            cs.setInt(5, sala);

            cs.execute();

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Data Added Scuessfuly');");
            out.println("location='viewdriver.jsp';");
            out.println("</script>");

        } catch (Exception e) {
            out.println(e.getMessage());
        }

    %>

</html>

