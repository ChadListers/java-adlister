<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="price">List Price</label>
                <input id="price" name="price" class="form-control" type="number">
            </div>
            <div class="form-group">
                <label for="category">Select Category:</label>
                <select name="category" id="category">
                    <option value="1">Retro Gaming</option>
                    <option value="2">Collectibles</option>
                    <option value="3">Peripherals</option>
                    <option value="4">PC Gaming</option>
                    <option value="5">Home Console</option>
                </select>
            </div>
            <div class="form-group">
                <label for="image">Image Url</label>
                <input id="image" name="image" class="form-control" type="url">
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
