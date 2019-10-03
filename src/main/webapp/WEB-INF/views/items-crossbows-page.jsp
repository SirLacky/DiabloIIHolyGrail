<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Crossbows</title>
</head>
<body>
<h1>Crossbows:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${crossbows}" var="crossbows">
<table>
        <tr>
            <td><img src="${crossbows.jpg}"></td>
            <td>${crossbows.name}</td>
            <td>${crossbows.requiredLVL}</td>
            <td>${crossbows.description}</td>
            <td>${crossbows.type2}</td>
            <td>${crossbows.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
