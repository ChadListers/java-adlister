<%--
  Created by IntelliJ IDEA.
  User: alexandra
  Date: 11/3/20
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            session.setAttribute("Name", username);
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <%@ include file="partials/head.jsp" %>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %>

    <h4>Please Log In</h4>
    <form method="POST" action="login.jsp">
        <label for="username">Username</label>
        <input id="username" name="username" type="text">
        <br>

        <label for="password">Password</label>
        <input id="password" name="password" type="password">
        <br>

        <input type="submit">

    </form>
</body>
<%@ include file="partials/scripts.jsp" %>
</html>
