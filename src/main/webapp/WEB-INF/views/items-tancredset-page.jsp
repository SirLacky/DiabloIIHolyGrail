<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Tancreds Battlegear</title>
</head>
<body>
<h1>Tancreds Battlegear:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${tancredsbattlegear}" var="tancredsbattlegear">
<table>
        <tr>
            <td><img src="${tancredsbattlegear.jpg}"></td>
            <td>${tancredsbattlegear.name}</td>
            <td>${tancredsbattlegear.requiredLVL}</td>
            <td>${tancredsbattlegear.description}</td>
            <td>${tancredsbattlegear.type2}</td>
            <td>${tancredsbattlegear.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>