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


<div class=" mt-5 container d-flex flex-wrap justify-content-around px-0">


<c:forEach var="ad" items="${ads}">
    <div class="card">
        <div id="form-bg" class="card-body">
            <h3 class="card-title px-3 py-1">${ad.title} - $${ad.price}</h3>
            <p class="card-text px-3 py-1">${ad.description}</p>
            <p class="card-text px-3 py-1"><small class="text-muted">
                <c:forEach var="cat" items="${categories}">
                <c:if test="${ad.categoryId == cat.id}">
                    <a class="text-decoration-none" style="font-size: 20px" href="/ads?${cat.id}">${cat.category}</a>
                </c:if>
                </c:forEach></small>
            </p>
                <c:forEach var="user" items="${users}">
                <c:if test="${ad.userId == user.id}">
                    <p><small class="text-muted px-3">Posted By: ${user.username}</small></p>
                    <p><small class="text-muted px-3">Contact: ${user.email}</small></p>
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
