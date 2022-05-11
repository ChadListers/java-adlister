<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div id="form-bg" class="container w-50 card px-3 py-5 mt-3">
        <h1 class="text-center">Register</h1>
        <form action="/register" method="post">
            <div class="form-group py-1">
                <label for="username">Username *</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group py-1">
                <label for="email">Email *</label>
                <input id="email" name="email" class="form-control" type="email">
            </div>
            <div class="form-group py-1">
                <label for="phone">Phone Number (optional) </label>
                <input id="phone" name="phone" class="form-control" type="tel"  pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}">
            </div>
            <div class="form-group py-1">
                <label for="password">Password *</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group py-1">
                <label for="confirm_password">Confirm Password *</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <div class="py-2 text-end">
            <input type="submit" class="btn btn-primary btn-block">
            </div>
        </form>
    </div>
</body>
</html>
