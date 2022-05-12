<%--
  Created by IntelliJ IDEA.
  User: alejandro
  Date: 5/9/22
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<%--<c:forEach var="cat" items="${categories}">--%>
<%--    <c:if test="${myads.id == myads.id}">--%>
<%--        <p>${cat.category}</p>--%>
<%--    </c:if>--%>
<%--</c:forEach>--%>

<div id="form-bg" class="container w-50 card px-3 py-5 mt-3">
    <h1 class="text-center">Edit Ad</h1>
    <form action="/profile/ads/edit" method="post">
        <div class="form-group py-1">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${adToEdit.title}">
        </div>
        <div class="form-group py-1">
            <label for="description">Description</label>
            <input style="height:100px;" id="description" name="description" class="form-control" value="${adToEdit.description}" type="text">
        </div>
        <div class="form-group py-1">
            <label for="price">List Price</label>
            <input id="price" name="price" class="form-control" type="number" value="${adToEdit.price}">
        </div>
        <div class="form-group py-1">
            <label for="category">Select Category:</label>
            <select class="form-select" name="category" id="category">
                <option value="${adToEdit.categoryId}">---
                    <c:forEach var="cat" items="${categories}">
                        <c:if test="${adToEdit.categoryId == cat.id}">
                            ${cat.category}
                        </c:if>
                    </c:forEach>---
                </option>
                <option value="1">Retro Gaming</option>
                <option value="2">Collectibles</option>
                <option value="3">Peripherals</option>
                <option value="4">PC Gaming</option>
                <option value="5">Home Console</option>
            </select>
        </div>
        <div class="form-group py-1">
            <label for="image">Image Url</label>
            <input id="image" name="image" class="form-control" type="url" value="${adToEdit.imageUrl}">
            <input id="id" name="adId" class="form-control" type="hidden" value="${adToEdit.id}">
        </div>
        <div class="d-flex justify-content-between">
            <div class="pt-4 text-start">
                <a href="/profile">Return to Profile</a>
            </div>
            <div class="pt-5 text-end">
                <input type="submit" class="btn btn-block btn-primary">
            </div>
        </div>
    </form>
</div>
</body>
</html>