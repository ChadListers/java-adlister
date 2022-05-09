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

<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/profile/ads/edit" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${adToEdit.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input id="description" name="description" class="form-control" value="${adToEdit.description}" type="text">
        </div>
        <div class="form-group">
            <label for="price">List Price</label>
            <input id="price" name="price" class="form-control" type="number" value="${adToEdit.price}">
        </div>
        <div class="form-group">
            <label for="category">Select Category:</label>
            <select name="category" id="category">
                <option value="${adToEdit.categoryId}">
                    <c:forEach var="cat" items="${categories}">
                        <c:if test="${adToEdit.categoryId == cat.id}">
                            ${cat.category}
                        </c:if>
                    </c:forEach>
                </option>
                <option value="2">Cars + Trucks</option>
                <option value="3">Appliances</option>
            </select>
        </div>
        <div class="form-group">
            <label for="image">Image Url</label>
            <input id="image" name="image" class="form-control" type="url" value="${adToEdit.imageUrl}">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>