<%--<nav class="navbar navbar-default">--%>
<%--    <div class="container-fluid">--%>
<%--        <!-- Brand and toggle get grouped for better mobile display -->--%>
<%--        <div class="navbar-header">--%>
<%--            <a class="navbar-brand" href="/ads">Adlister</a>--%>
<%--        </div>--%>
<%--        <ul class="nav navbar-nav navbar-right">--%>
<%--            <li><a href="/login">Login</a></li>--%>
<%--            <li><a href="/logout">Logout</a></li>--%>
<%--        </ul>--%>
<%--    </div><!-- /.navbar-collapse -->--%>
<%--    </div><!-- /.container-fluid -->--%>
<%--</nav>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar container-fluid nav-85 indigo topBotomBordersIn d-flex>">
    <div onclick="window.location=('/')" class="m-auto" style="width: 30%; cursor: pointer">
        <img id="navpic" style="width: 230px; height: 50px" src="/assets/real-chad-final.png">
    </div>
    <div style="width: 70%" class="linkss m-auto">
    <c:if test="${sessionScope.user != null}">
        <a href="/">Home</a>
        <a href="/profile">My Profile</a>
<%--        <a href="/ads">Ads</a>--%>
<%--        <a href="/profile/ads">My Ads</a>--%>
        <a href="/ads/create">Create Ad</a>
    </c:if>

    <c:if test="${sessionScope.user == null}">
<%--        <a href="/">Home</a>--%>
        <a href="/login">Login</a>
        <a href="/register">Register</a>
    </c:if>

    <c:if test="${sessionScope.user != null}">
        <a href="/logout">Logout</a>
    </c:if>

    </div>
</div>
