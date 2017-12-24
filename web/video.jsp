<%-- 
    Document   : video
    Created on : 23 Dec, 2017, 11:33:59 AM
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Video Store</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            
            if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.jsp");
            }
        %>
        <iframe width="420" height="315"
                src="https://www.youtube.com/embed/KcWXKmnZZVo">
        </iframe>
    </body>
</html>
