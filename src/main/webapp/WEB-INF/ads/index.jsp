<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <title>Welcome</title>
</head>
<body>
<!--NAVBAR JSP-->
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<!--SEARCH BAR-->
<%--<div class="d-flex justify-content-center mt-4">--%>
<%--    <div class="input-group w-50">--%>
<%--        <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />--%>
<%--        <button type="button" class="btn btn-outline-dark">search</button>--%>
<%--    </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;THIS CONTAINER CONTAINS THE ADS & CATEGORIES&ndash;%&gt;--%>
<%--<div class="container d-flex">--%>
<%--    <!--CATEGORIES-->--%>
<%--    <div class="w-25 h-100">--%>
<%--                <ul class="footer-links">--%>
<%--                    Categories--%>
<%--                    <li class="cat-list mb-2"><a class="text-decoration-none text-black" href="https://google.com/">cars</a></li>--%>
<%--                    <li class="cat-list mb-2"><a class="text-decoration-none text-black" href="https://google.com/">instruments</a></li>--%>
<%--                    <li class="cat-list mb-2"><a class="text-decoration-none text-black" href="https://google.com/">gaming</a></li>--%>
<%--                    <li class="cat-list mb-2"><a class="text-decoration-none text-black" href="https://google.com/">people</a></li>--%>
<%--                    <li class="cat-list mb-2"><a class="text-decoration-none text-black" href="https://google.com/">furniture</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--    <!--ADS-->--%>
<%--    <div class="w-75 d-flex flex-wrap">--%>
<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="d-flex flex-wrap">--%>
<%--            <div class="card mb-3" style="width: 300px">--%>
<%--                <img src="https://camo.githubusercontent.com/826133902a4cb45a0c1618a361649568f4da6de5c33b0417549cb2f04e7e2918/68747470733a2f2f7261776769742e636f6d2f6a616e74696d6f6e2f7376672d706c616365686f6c6465722f6d61737465722f6578616d706c652e737667" class="card-img-top" alt="..." style="width: 300px; height: 200px">--%>
<%--                <div class="card-body">--%>
<%--                        &lt;%&ndash;line 21 is to grab the title of the ad below are more db grabbers&ndash;%&gt;--%>
<%--                    <h5 class="card-title">${ad.title}</h5>--%>
<%--                    <c:forEach var="cat" items="${categories}">--%>
<%--                        <c:if test="${ad.categoryId == cat.id}">--%>
<%--                            <p>${cat.category}</p>--%>
<%--                        </c:if>--%>
<%--                    </c:forEach>--%>
<%--                    <p>${ad.description}</p>--%>
<%--                    <p>$${ad.price}</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        &lt;%&ndash;AD CONTAINER ENDS HERE&ndash;%&gt;--%>
<%--    </c:forEach>--%>
<%--    </div>--%>
<%--</div>--%>
<!--FOOTER JSP-->






<div class="container d-flex flex-wrap text-center">

    <div id="profile-info" class="w-25">
        <div class="ms-2">
            <!-- Profile Settings-->

            <div class="container">
                <div class="row">


                    <div class="col-12 pt-5">
                        <%--                            <ul class="footer-links">--%>
                        <h2 class="indigo-text">Categories</h2>
                        <h3 class="cat-list my-5"><a class="text-decoration-underline text-black" href="https://google.com/">cars</a></h3>
                        <h3 class="cat-list my-5"><a class="text-decoration-underline text-black" href="https://google.com/">instruments</a></h3>
                        <h3 class="cat-list my-5"><a class="text-decoration-underline text-black" href="https://google.com/">gaming</a></h3>
                        <h3 class="cat-list my-5"><a class="text-decoration-underline text-black" href="https://google.com/">people</a></h3>
                        <h3 class="cat-list my-5"><a class="text-decoration-underline text-black" href="https://google.com/">furniture</a></h3>
                        <%--                            </ul>--%>
                    </div>




                </div>
            </div>
        </div>
    </div>

    <div id="ads-info" class="w-75">
        <div class="container ps-5">
            <div class="row">



<%--                    <div class="d-flex justify-content-center pt-4 pb-4">--%>
<%--                        <div class="input-group w-75">--%>
<%--                            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />--%>
<%--                            <button type="button" class="btn btn-outline-dark">search</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                <div class="d-flex justify-content-center pt-4 pb-4">
                        <form class="input-group w-75" method="get" action="/ads">
                            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="search" />
                            <button type="submit" class="btn btn-outline-dark">search</button>
                        </form>
                </div>



                <div class="container d-flex flex-wrap justify-content-around px-0">

                    <c:forEach var="ad" items="${ads}">
                        <div class="d-flex flex-wrap">
                            <div class="card mb-3 mx-1" style="width: 300px">
                                <img src="${ad.imageUrl}" class="card-img-top" alt="..." style="width: 300px; height: 200px">
                                <div class="card-body">
                                        <%--line 21 is to grab the title of the ad below are more db grabbers--%>
                                    <h5 class="card-title">${ad.title}</h5>
                                        <c:forEach var="user" items="${users}">
                                            <c:if test="${ad.userId == user.id}">
                                                <h6>@${user.username}</h6>
                                            </c:if>
                                        </c:forEach>
                                    <c:forEach var="cat" items="${categories}">
                                        <c:if test="${ad.categoryId == cat.id}">
                                            <p>${cat.category}</p>
                                        </c:if>
                                    </c:forEach>
                                    <p>${ad.description}</p>
                                    <p>$${ad.price}</p>
                                </div>
                            </div>
                        </div>
                        <%--AD CONTAINER ENDS HERE--%>
                    </c:forEach>

                </div>



            </div>
        </div>
    </div>


</div>







    <jsp:include page="/footer.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</body>
</html>
