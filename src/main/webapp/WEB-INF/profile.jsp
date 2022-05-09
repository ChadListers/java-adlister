<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username} to your Profile!</h1>
    </div>
    <div id="profile-info" class="w-50">
        <div class="ms-5">
            <!-- Profile Settings-->

                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div class="form-group">
                                <label for="account-username">Username</label>
                                <input disabled class="form-control" type="text" id="account-username" placeholder="${sessionScope.user.username}">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="account-fn">First Name</label>
                                <input disabled class="form-control" type="text" id="account-fn" placeholder="* User First name" required="">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="account-ln">Last Name</label>
                                <input disabled class="form-control" type="text" id="account-ln" placeholder="* User Last Name" required="">
                            </div>

                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="account-email">E-mail Address</label>
                                <input disabled class="form-control" type="email" id="account-email" placeholder="${sessionScope.user.email}">
                            </div>
                        </div>


                        <div class="col-lg-6">
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


                        <div class="col-12">
                            <hr class="mt-3 mb-3">
                            <div class="d-flex flex-wrap justify-content-between align-items-center">
                                <form method="get" action="/profile/edit">
                                <button class="btn btn-style-1 btn-primary">Edit Profile</button>
                                </form>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
<jsp:include page="partials/bootstrap-script.jsp"/>
</body>
</html>
