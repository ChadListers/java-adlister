<%--
  Created by IntelliJ IDEA.
  User: alejandro
  Date: 5/11/22
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
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

<div class="container mt-5 mb-3 text-center">
    <h6><a href="/ads" style="color: blue; text-decoration-line: underline;">Return to Ads</a></h6>
</div>
<div class=" mt-0 container d-flex flex-wrap justify-content-around px-0">



<c:forEach var="ad" items="${ads}">
    <div class="card">
        <div id="form-bg" class="card-body">
            <div class="d-flex justify-content-between">
            <h3 class=" w-75 card-title px-3 py-1">${ad.title} - $${ad.price}</h3>
            <p class="w-25 px-1 mb-0 text-end text-muted" >Views: ${ad.views}</p>
            </div>
            <p class="card-text px-3 py-1">${ad.description}</p>
<%--            <p class="card-text px-3 py-1">views: ${ad.views}</p>--%>
            <p class="card-text px-3 py-1"><small class="text-muted">
                <c:forEach var="cat" items="${categories}">
                <c:if test="${ad.categoryId == cat.id}">
                    <a class="text-decoration-none" style="font-size: 20px" href="/ads?catid=${cat.id}">${cat.category}</a>
                </c:if>
                </c:forEach></small>
            </p>
                <c:forEach var="user" items="${users}">
                <c:if test="${ad.userId == user.id}">
                    <p class="px-3 mb-0"><small class="text-muted">Posted By: ${user.username}</small></p>
                    <p class="px-3 mt-0"><small class="text-muted ">Email: ${user.email}</small></p>
                </c:if>
                </c:forEach>

        </div>
        <img class="card-img-bottom" src="${ad.imageUrl}" alt="Card image cap" style="width: 831px; height: 550px">
    </div>
</c:forEach>


<%--            <div class="card mb-3 mx-1" style="width: 300px">--%>
<%--                <img src="${ads.imageUrl}" class="card-img-top" alt="..." style="width: 300px; height: 200px">--%>
<%--                <div class="card-body">--%>
<%--                        &lt;%&ndash;line 21 is to grab the title of the ad below are more db grabbers&ndash;%&gt;--%>
<%--                    <h5 class="card-title">${ads.title}</h5>--%>
<%--&lt;%&ndash;                    <c:forEach var="user" items="${users}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <c:if test="${ad.userId == user.id}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h6>@${user.username}</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </c:forEach>&ndash;%&gt;--%>
<%--                    <c:forEach var="cat" items="${categories}">--%>
<%--                        <c:if test="${ads.categoryId == cat.id}">--%>
<%--                            ${cat.category}--%>
<%--                        </c:if>--%>
<%--                    </c:forEach>--%>
<%--                    <p>${ads.description}</p>--%>
<%--                    <p>$${ads.price}</p>--%>
<%--                </div>--%>
<%--            </div>--%>


</div>


</body>
</html>
