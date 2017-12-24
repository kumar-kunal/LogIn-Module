<%-- 
    Document   : index
    Created on : 23 Dec, 2017, 11:31:34 AM
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); //for http 1.1
            response.setHeader("Pragma", "no-cache");  //for http 1.0
            response.setHeader("Expires", "0");  //for proxy
            
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("Login.jsp");
            }
        %>
        Welcome ${username}
        <br>
        Click<a href="video.jsp"> here</a>for Video.
        or
        <form action="logout">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
