<%-- 
    Document   : deldriver
    Created on : 22 Aug, 2022, 12:00:07 AM
    Author     : Aniket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Types"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleTypes"%>
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
   
    
    try {
        
         int Did = Integer.parseInt(request.getParameter("Did"));
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
        String sql = "{ call fy.DELDRIVER1(?)}";
        CallableStatement cs = con.prepareCall(sql);
        cs.setInt(1, Did);
        cs.execute();
        
         out.println("<script type=\"text/javascript\">");
            out.println("alert('Data Deleted Scuessfuly');");
            out.println("location='viewdriver.jsp';");
            out.println("</script>");
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
    </body>
</html>
