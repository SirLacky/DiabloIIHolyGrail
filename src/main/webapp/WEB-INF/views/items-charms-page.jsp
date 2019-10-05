<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Charms</title>
</head>
<body>
<h1>Charms:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${charms}" var="charms">
<table>
        <tr>
            <td><img src="${charms.jpg}"></td>
            <td>${charms.name}</td>
            <td>${charms.requiredLVL}</td>
            <td>${charms.description}</td>
            <td>${charms.type2}</td>
            <td>${charms.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
