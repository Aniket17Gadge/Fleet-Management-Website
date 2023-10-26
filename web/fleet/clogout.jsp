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
            session.invalidate();
            out.print("<script>");
                    out.print("alert('Logout Sucessfully ');");
                    out.print("location='index.jsp';");
                    out.print("</script>");

        %>
    </body>
</html>