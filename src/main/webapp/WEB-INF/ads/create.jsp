<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>

<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Viewing All The Ads" />--%>
<%--    </jsp:include>--%>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div id="form-bg" class="container w-50 card px-3 py-5 mt-3">
        <h1 class="text-center">Create a new Ad</h1>
        <form id="formId" action="/ads/create" method="post">
            <div class="form-group py-1">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group py-1">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group py-1">
                <label for="price">List Price</label>
                <input id="price" name="price" class="form-control" type="number" placeholder="$">
            </div>
            <div class="form-group py-1">
                <label for="category">Select Category:</label>
                <select class="form-select" name="category" id="category">
                    <option value="">--- Please select ---</option>
                    <option value="1">Retro Gaming</option>
                    <option value="2">Collectibles</option>
                    <option value="3">Peripherals</option>
                    <option value="4">PC Gaming</option>
                    <option value="5">Home Console</option>
                </select>
            </div>



            <div class="form-group py-1">
                <label for="image">Image Url</label>
                <input id="image" name="image" class="form-control" type="url">
            </div>
            <div class="py-2 text-end">
            <input type="submit" class="btn btn-block btn-primary">
            </div>
        </form>
    </div>

<script>
    $('#formId').submit(function (e) {
        if ($('#category').val() == '') {
            e.preventDefault();
            alert("Please select an option");
            return false;
        } else {
            return true;
        }
    });


</script>

<%--<script src="/js/main.js.js"></script>--%>
</body>
</html>
