<%--
  Created by IntelliJ IDEA.
  User: alexandra
  Date: 11/3/20
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp" >
        <jsp:param name="title" value="Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <h1>Hello <%=session.getAttribute("Name")%></h1>

</body>
    <jsp:include page="partials/scripts.jsp" />
</html>
