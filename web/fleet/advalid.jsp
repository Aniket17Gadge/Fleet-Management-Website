<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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

                String a = request.getParameter("a");
                String b = request.getParameter("b");

                CallableStatement cs = con.prepareCall("{? = call advalid(?,?)}");

                cs.registerOutParameter(1, Types.VARCHAR);
                cs.setString(2, a);
                cs.setString(3, b);
                cs.execute();
                String res = cs.getString(1);
                

                if (res.equals("Login Successfully")) {
                    session.setAttribute("username", a);
                    out.print("<script>");
                    out.print("alert('You Are In');");
                    out.print("location='dash/adashboard.jsp';");
                    out.print("</script>");
                  

                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                  out.print("<script>");
                    out.print("alert('userame or password s wrong');");
                    out.print("location='alogin.jsp';");
                    out.print("</script>");

                }

            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %>
    </body>
</html>