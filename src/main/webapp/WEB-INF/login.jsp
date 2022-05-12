<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />



    <div id="form-bg" class="container w-50 card px-3 py-5 mt-3">
        <h1 class="text-center">Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group py-1">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group py-1">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
                <c:if test="${param.errors != null}">
                    <p style="color: red">Incorrect username or password!</p>
                </c:if>
            <div class="d-flex justify-content-between">
                <div class="pt-4 text-start">
                    <a href="/">Return to Home</a>
                </div>
                <div class="pt-5 text-end">
                    <input type="submit" class="btn btn-block btn-primary">
                </div>
            </div>
        </form>
    </div>
</body>
</html>




