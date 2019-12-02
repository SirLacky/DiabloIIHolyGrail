<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Natalyas Odium</title>
</head>
<body>
<h1>Natalyas Odium:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${natalyasodium}" var="natalyasodium">
<table>
        <tr>
            <td><img src="${natalyasodium.jpg}"></td>
            <td>${natalyasodium.name}</td>
            <td>${natalyasodium.requiredLVL}</td>
            <td>${natalyasodium.description}</td>
            <td>${natalyasodium.type2}</td>
            <td>${natalyasodium.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>