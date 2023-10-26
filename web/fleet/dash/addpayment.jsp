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
        
        int a = Integer.parseInt(request.getParameter("a"));
        String b = request.getParameter("b");
        int c = Integer.parseInt(request.getParameter("c"));
        

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
            CallableStatement cs = con.prepareCall("{call fy.addpayment(?,?,?)}");

         
            cs.setInt(1, a);
            cs.setString(2, b);
            cs.setInt(3, c);

            cs.execute();
           

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Payment Scuessfuly');");
//           out.println(a);
            out.println("location='payment.jsp';");
            out.println("</script>");

        } catch (Exception e) {
            out.println(e.getMessage());
        }

    %>

</html>

