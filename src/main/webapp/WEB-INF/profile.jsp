<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>



</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <h1 id="header" class="text-center pt-3"> Welcome, ${sessionScope.user.username}!</h1>

    <div class="container d-flex flex-wrap text-center">

    <div id="profile-info" class="w-25">
        <div class="ms-2">
            <!-- Profile Settings-->

                <div class="container">
                    <div class="row">

                        <h2 class="pt-3">User Information</h2>

                        <div class="col-12 pt-3">
                            <div class="form-group">
                                <label for="account-username">Username</label>
                                <input disabled class="form-control" type="text" id="account-username" placeholder="${sessionScope.user.username}">
                            </div>
                        </div>

                        <div class="col-lg-12 pt-3">
                            <div class="form-group">
                                <label for="account-fn">First Name</label>
                                <input disabled class="form-control" type="text" id="account-fn" placeholder="${sessionScope.user.firstName}" required="">
                            </div>
                        </div>

                        <div class="col-lg-12 pt-3">
                            <div class="form-group">
                                <label for="account-ln">Last Name</label>
                                <input disabled class="form-control" type="text" id="account-ln" placeholder="${sessionScope.user.lastName}" required="">
                            </div>

                        </div>
                        <div class="col-lg-12 pt-3">
                            <div class="form-group">
                                <label for="account-email">E-mail Address</label>
                                <input disabled class="form-control" type="email" id="account-email" placeholder="${sessionScope.user.email}">
                            </div>
                        </div>


                        <div class="col-lg-12 pt-3">
                            <div class="form-group">
                                <label for="account-phone">Phone Number</label>
                                <input disabled class="form-control" type="text" id="account-phone" placeholder="${sessionScope.user.phoneNumber}" required="">
                            </div>
                        </div>


<%--                        <div class="col-md-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="account-pass">New Password</label>--%>
<%--                                <input class="form-control" type="password" id="account-pass">--%>
<%--                            </div>--%>
<%--                        </div>--%>


<%--                        <div class="col-md-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="account-confirm-pass">Confirm Password</label>--%>
<%--                                <input class="form-control" type="password" id="account-confirm-pass">--%>
<%--                            </div>--%>
<%--                        </div>--%>


                        <div class="col-12 pt-3">
                            <hr class="mt-3 mb-3">
                            <div class="d-flex flex-wrap justify-content-between align-items-center">
                                <form method="get" action="/profile/edit">
                                <button class="btn btn-style-1 btn-primary">Edit Info</button>
                                </form>

                                <form method="post" action="/profile">
                                    <input type="hidden" name="delete-user" value="${sessionScope.user.id}">
                                    <button class="btn btn-style-1 btn-danger" onclick="return confirm('Are you sure you want to permanently delete this account?');">Delete Account</button>
                                </form>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

        <div id="ads-info" class="w-75">
            <div class="container ps-5">
                <div class="row">
                    <h2 class="pt-3 pb-4">Your Ads</h2>







                    <div class="container d-flex flex-wrap justify-content-around px-0" >

                        <c:forEach var="ad" items="${myads}">
                            <div class="d-flex flex-wrap">
                                <div class="card mb-3 mt-1" style="width: 300px">
<%--                                <div class="card mb-3 mt-1" style="width: 300px" onclick="document.getElementById('formEdit').submit();">--%>
                                    <img id="img" src="${ad.imageUrl}" class="card-img-top" alt="..." style="width: 298px; height: 200px">
                                    <div class=" d-flex flex-column card-body px-1 py-0">
                                        <a class="text-decoration-none" style="color: blue" href="/ad?${ad.id}">
                                            <h5 class=" py-2 card-title">${ad.title}</h5></a>
                                        <c:forEach var="cat" items="${categories}">
                                            <c:if test="${ad.categoryId == cat.id}">
                                                <p>${cat.category}</p>
                                            </c:if>
                                        </c:forEach>
                                            <p>${ad.description}</p>
                                        <div class="m-auto d-flex justify-content-around">
                                            <p style="font-weight: bold; color: green">$${ad.price}</p>
                                        <p class="px-3 mb-0 text-end" ><small class="text-muted">Views: ${ad.views}</small></p>
                                        </div>
                                    <div class="mt-auto d-flex justify-content-between align-items-end">
                                        <form id="formDelete" class="mb-1" action="/ads/delete" method="post">
                                            <input type="hidden" name="delete" value="${ad.id}">
<%--                                            <button onclick="return confirm('Are you sure you want to delete this item?');">Delete</button>--%>
                                            <button onclick="return confirm('Are you sure you want to delete this item?');" class="button-85" role="button"><i class="fa-solid fa-trash-can"></i></button>
                                        </form>
                                        <form id="formEdit" class="mb-1" action="/profile/ads/edit" method="get">
                                            <input type="hidden" name="edit" value="${ad.id}">
                                            <button class="button-85" role="button"><i class="fa-solid fa-pen-to-square"></i></button>
                                        </form>
                                    </div>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <%--<jsp:include page="partials/bootstrap-script.jsp"/>--%>
</body>
</html>
