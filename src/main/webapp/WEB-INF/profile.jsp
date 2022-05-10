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
    <h1 id="header" class="text-center pt-3">${sessionScope.user.username}'s profile!</h1>

    <div class="container d-flex flex-wrap text-center">

    <div id="profile-info" class="w-25">
        <div class="ms-2">
            <!-- Profile Settings-->

                <div class="container">
                    <div class="row">

                        <h2 class="pt-5">User Information</h2>

                        <div class="col-12 pt-3">
                            <div class="form-group">
                                <label for="account-username">Username</label>
                                <input disabled class="form-control" type="text" id="account-username" placeholder="${sessionScope.user.username}">
                            </div>
                        </div>

                        <div class="col-lg-12 pt-3">
                            <div class="form-group">
                                <label for="account-fn">First Name</label>
                                <input disabled class="form-control" type="text" id="account-fn" placeholder="* User First name" required="">
                            </div>
                        </div>

                        <div class="col-lg-12 pt-3">
                            <div class="form-group">
                                <label for="account-ln">Last Name</label>
                                <input disabled class="form-control" type="text" id="account-ln" placeholder="* User Last Name" required="">
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
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

        <div id="ads-info" class="w-75">
            <div class="container ps-5">
                <div class="row">
                    <h2 class="pt-5">Your Ads</h2>







                    <div class="container d-flex flex-wrap justify-content-around px-0">

                        <c:forEach var="ad" items="${myads}">
                            <div class="d-flex flex-wrap">
                                <div class="card mb-3 mx-1" style="width: 300px">
                                    <img src="https://camo.githubusercontent.com/826133902a4cb45a0c1618a361649568f4da6de5c33b0417549cb2f04e7e2918/68747470733a2f2f7261776769742e636f6d2f6a616e74696d6f6e2f7376672d706c616365686f6c6465722f6d61737465722f6578616d706c652e737667" class="card-img-top" alt="..." style="width: 300px; height: 200px">
                                    <div class="card-body">
                                        <h5 class="card-title">${ad.title}</h5>
                                        <c:forEach var="cat" items="${categories}">
                                            <c:if test="${ad.categoryId == cat.id}">
                                                <p>${cat.category}</p>
                                            </c:if>
                                        </c:forEach>
                                            <p>${ad.description}</p>
                                            <p>$${ad.price}</p>
                                        <form action="/profile/ads" method="post">
                                            <input type="hidden" name="delete" value="${ad.id}">
                                            <button>Delete</button>
                                        </form>
                                        <form action="/profile/ads/edit" method="get">
                                            <input type="hidden" name="edit" value="${ad.id}">
                                            <button>Edit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>








                </div>
            </div>
        </div>


    </div>
<jsp:include page="partials/bootstrap-script.jsp"/>
</body>
</html>
