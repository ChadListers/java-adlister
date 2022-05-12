<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <form id="formRegId" action="/register" method="post">
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
            <c:if test="${param.errors != null}">
                <p style="color: red">Passwords do not match!</p>
            </c:if>
            <c:if test="${param.error != null}">
                <p style="color: red">Please enter a password!</p>
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

    <script>

        $('#formRegId').submit(function (e) {
            if ($('#username').val() == '') {
                e.preventDefault();
                alert("Please enter a username");
                return false;
            } else {
                return true;
            }
        });

        $('#formRegId').submit(function (e) {
            if ($('#email').val() == '') {
                e.preventDefault();
                alert("Please enter an email");
                return false;
            } else {
                return true;
            }
        });


    </script>

</body>
</html>
