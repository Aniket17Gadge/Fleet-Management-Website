<%-- 
    Document   : cusvaild
    Created on : 4 Sep, 2022, 9:42:12 AM
    Author     : panma
--%>
<%@page import="java.sql.*"%>
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
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");

                String e = request.getParameter("a");
                String pass = request.getParameter("b");

                CallableStatement cs = con.prepareCall("{? = call cusvalid(?,?)}");

                cs.registerOutParameter(1, Types.VARCHAR);
                cs.setString(2, e);
                cs.setString(3, pass);
                cs.execute();
                String res = cs.getString(1);
                

                if (res.equals("Login Successfully")) {
                    session.setAttribute("username", e);
                    out.print("<script>");
                    out.print("alert('"+cs.getString(1)+"');");
                    out.print("location='index1.jsp';");
                    out.print("</script>");
                  

                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                  out.print("<script>");
                    out.print("alert('"+cs.getString(1)+"');");
                    out.print("location='clogin.jsp';");
                    out.print("</script>");

                }

            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %> 
    </body>
</html>
