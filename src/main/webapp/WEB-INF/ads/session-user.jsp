<%--
  Created by IntelliJ IDEA.
  User: alejandro
  Date: 5/9/22
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${myads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p>$${ad.price}</p>
                <%--            <p>${ad.categoryId}</p>--%>
            <c:forEach var="cat" items="${categories}">
                <c:if test="${ad.categoryId == cat.id}">
                    <p>${cat.category}</p>
                </c:if>
            </c:forEach>
            <form action="/profile/ads" method="post">
                <input type="hidden" name="delete" value="${ad.id}">
                <button>Delete</button>
            </form>
            <form action="/profile/ads" method="get">
                <input type="hidden" name="delete" value="${ad.id}">
                <button>Delete</button>
            </form>

        </div>
    </c:forEach>
</div>

</body>
</html>

