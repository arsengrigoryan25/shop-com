<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<div style="horiz-align: center">
    <p>Name: ${element.name}</p>
    <p>Description: ${element.description}</p>
    <p>Price: ${element.price}</p>
    </p>
    <img src="${element.images_url}"/>
</div>
</body>
</html>
