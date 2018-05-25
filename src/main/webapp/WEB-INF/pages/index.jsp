<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Shop.am</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        <%@ include file="../css/style.css"%>
    </style>
</head>
<body>
<div>
    <ul id="menu" class="center">
        <li><a href="?category=Electronics">Էլեկտրոնիկա</a></li>
        <li><a href="?category=RealEstate">Անշարժ գույք</a></li>
        <li><a href="?category=Vehicles">Տրանսպորտ</a></li>
        <li><a href="?category=ForKids">Երեխաների աշխարհ</a></li>
        <li><a href="?category=ToolsAndMaterials">Գործիքներ և նյութեր</a></li>
        <li><a href="?category=Furniture">Կահույք</a></li>
    </ul>
</div>
<div style="height: 100px"></div>
<div>
    <c:forEach items="${products}" var="element">
        ${element.name}
        ${element.price}
        ${element.description}
        </p>
        <img src="${element.images_url}"/>
    </c:forEach>
</div>
</body>
</html>
