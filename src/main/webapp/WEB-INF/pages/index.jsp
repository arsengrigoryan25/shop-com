<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${products}" var="element">
    <c:if test="${income > 8000}">
        <p>My income is: <c:out value="${income}"/><p>
    </c:if>
    ${element.name}
    ${element.price}
    ${element.description}
    </p>
    <img src="${element.images_url}" />
</c:forEach>
</body>
</html>
