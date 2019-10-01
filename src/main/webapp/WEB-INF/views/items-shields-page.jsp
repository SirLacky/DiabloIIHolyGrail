<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Shields</title>
</head>
<body>
<h1>Shields:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${shields}" var="shields">
<table>
        <tr>
            <td><img src="${shields.jpg}"></td>
            <td>${shields.name}</td>
            <td>${shields.requiredLVL}</td>
            <td>${shields.description}</td>
            <td>${shields.type2}</td>
            <td>${shields.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
