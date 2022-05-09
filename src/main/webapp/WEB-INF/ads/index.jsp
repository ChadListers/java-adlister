<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Welcome</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<%--THIS CONTAINER CONTAINS ALL THE ADS--%>
<div class="container flex-box">
    <div>
        <h1 class="ms-5">Here Are all the ads!</h1>
    </div>

    <div class="d-flex ms-4 justify-content-start">
        <h2>Categories</h2>
    </div>

    <div class="d-flex justify-content-end">
        <label class="me-3" for="site-search">Search Ads</label>
        <input class="w-50 mb-3" type="search" id="site-search" placeholder="Search" name="q">

        <button class="h-25 w-5">Search</button>
    </div>

<div class=" d-flex d-grid flex-wrap justify-content-end col-md-9 w-100">
    <!--CATEGORIES-->
    <div class="d-flex justify-content-start col-md-3">
        <ul class="footer-links">
            <li class="cat-list mb-2"><a class="text-decoration-none text-decoration-underline text-black" href="http://scanfcode.com/about/">cars</a></li>
            <li class="cat-list mb-2"><a class="text-decoration-none text-decoration-underline text-black" href="http://scanfcode.com/contact/">instruments</a></li>
            <li class="cat-list mb-2"><a class="text-decoration-none text-decoration-underline text-black" href="http://scanfcode.com/contribute-at-scanfcode/">gaming</a></li>
            <li class="cat-list mb-2"><a class="text-decoration-none text-decoration-underline text-black" href="http://scanfcode.com/privacy-policy/">people</a></li>
            <li class="cat-list mb-2"><a class="text-decoration-none text-decoration-underline text-black" href="http://scanfcode.com/sitemap/">furniture</a></li>
        </ul>
    </div>
<c:forEach var="ad" items="${ads}">
    <div class="d-flex flex-wrap">
            <div class="card mb-3" style="width: 300px">
                <img src="https://camo.githubusercontent.com/826133902a4cb45a0c1618a361649568f4da6de5c33b0417549cb2f04e7e2918/68747470733a2f2f7261776769742e636f6d2f6a616e74696d6f6e2f7376672d706c616365686f6c6465722f6d61737465722f6578616d706c652e737667" class="card-img-top" alt="..." style="width: 300px; height: 200px">
                <div class="card-body">
<%--line 21 is to grab the title of the ad below are more db grabbers--%>
                    <h5 class="card-title">${ad.title}</h5>
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
<!--FOOTER JSP-->
    <jsp:include page="/footer.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>

</body>
</html>
