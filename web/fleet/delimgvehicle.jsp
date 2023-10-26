<%@page import="java.sql.Types"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>


<%
   
    
    try {
        
        String a = request.getParameter("a");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
        String sql = "{ call fy.delimgvehicle(?)}";
        CallableStatement cs = con.prepareCall(sql);
        cs.setString(1, a);
        cs.execute();
        
         out.println("<script type=\"text/javascript\">");
            out.println("alert('Data Deleted Scuessfuly');");
            out.println("location='advehicle.jsp';");
            out.println("</script>");
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
