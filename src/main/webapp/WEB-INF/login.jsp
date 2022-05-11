<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            </div>
            <div class="py-2 text-end">
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
            </div>
        </form>
    </div>
</body>
</html>




