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



<%--ORIGINAL NAVBAR--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<div class="navbar container indigo topBotomBordersIn">--%>
<%--    <c:if test="${sessionScope.user != null}">--%>
<%--        <a href="/">Home</a>--%>
<%--        <a href="/profile">My Profile</a>--%>
<%--&lt;%&ndash;        <a href="/ads">Ads</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <a href="/profile/ads">My Ads</a>&ndash;%&gt;--%>
<%--        <a href="/ads/create">Create Ad</a>--%>
<%--    </c:if>--%>

<%--    <c:if test="${sessionScope.user == null}">--%>
<%--        <a href="/">Home</a>--%>
<%--        <a href="/login">Login</a>--%>
<%--        <a href="/register">Register</a>--%>
<%--    </c:if>--%>

<%--    <c:if test="${sessionScope.user != null}">--%>
<%--        <a href="/logout">Logout</a>--%>
<%--    </c:if>--%>


<%--</div>--%>





<nav class="container navbar navbar-expand-custom navbar-mainbg">
    <a class="navbar-brand navbar-logo" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <div class="hori-selector"><div class="left"></div><div class="right"></div>
    </div>
            <li class="nav-item active">
                <a class="nav-link" href="javascript:void(0);"><i class="fas fa-tachometer-alt"></i>Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);"><i class="far fa-address-book"></i>Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void('/profile');"><i class="far fa-clone"></i>Components</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);"><i class="far fa-calendar-alt"></i>Calendar</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);"><i class="far fa-chart-bar"></i>Charts</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);"><i class="far fa-copy"></i>Documents</a>
            </li>
        </ul>
    </div>
</nav>


