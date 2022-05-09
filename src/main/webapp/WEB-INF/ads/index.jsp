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
<h1 class="text-center">Here Are all the ads!</h1>
<div class="container d-flex d-grid flex-wrap">
<c:forEach var="ad" items="${ads}">
    <div class="col">
            <div class="card mb-3" style="width: 350px">
                <img src="https://camo.githubusercontent.com/826133902a4cb45a0c1618a361649568f4da6de5c33b0417549cb2f04e7e2918/68747470733a2f2f7261776769742e636f6d2f6a616e74696d6f6e2f7376672d706c616365686f6c6465722f6d61737465722f6578616d706c652e737667" class="card-img-top" alt="..." style="width: 350px; height: 250px">
                <div class="card-body">
                    <h5 class="card-title">${ad.title}</h5>
                    <p>${ad.description}</p>
                    <p>$${ad.price}</p>
                </div>
            </div>
    </div>
</c:forEach>
<%--        <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-6">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--            <p>$${ad.price}</p>--%>
<%--&lt;%&ndash;            <p>${ad.categoryId}</p>&ndash;%&gt;--%>
<%--            <c:forEach var="cat" items="${categories}">--%>
<%--                <c:if test="${ad.categoryId == cat.id}">--%>
<%--                    <p>${cat.category}</p>--%>
<%--                </c:if>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
</div>
</div>
</body>
</html>
