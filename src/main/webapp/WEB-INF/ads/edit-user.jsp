<%--
  Created by IntelliJ IDEA.
  User: alejandro
  Date: 5/9/22
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />



<div id="form-bg" class="container w-50 card px-3 py-5 mt-3">
    <h1 class="text-center">Edit Profile Information</h1>
    <h6 class="text-center" style="font-weight: lighter; color: red">(Editing user information will require you to re-login.)</h6>
    <form action="/profile/edit" method="post">
        <div class="form-group py-1">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${sessionScope.user.username}">
        </div>
        <div class="form-group py-1">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${sessionScope.user.email}">
        </div>
        <div class="form-group py-1">
            <label for="phone">Phone Number</label>
            <input id="phone" name="phone" class="form-control" type="text" value="${sessionScope.user.phoneNumber}">
        </div>
        <div class="form-group py-1">
            <label for="first-name">First Name</label>
            <input id="first-name" name="first-name" class="form-control" type="text" value="${sessionScope.user.firstName}">
        </div>
        <div class="form-group py-1">
            <label for="last-name">Last Name</label>
            <input id="last-name" name="last-name" class="form-control" type="text" value="${sessionScope.user.lastName}">
        </div>
        <div class="form-group py-1">
            <input name="id" class="form-control" type="hidden" value="${sessionScope.user.id}">
        </div>
        <div class="d-flex justify-content-between">
            <div class="pt-4 text-start">
                <a href="/profile">Return to Profile</a>
            </div>
            <div class="pt-5 text-end">
                <input type="submit" class="btn btn-block btn-primary">
            </div>
        </div>
    </form>
</div>
</body>
</html>