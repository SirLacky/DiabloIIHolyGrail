<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Deaths Disguise</title>
</head>
<body>
<h1>Deaths Disguise:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${deathsdisguise}" var="deathsdisguise">
<table>
        <tr>
            <td><img src="${deathsdisguise.jpg}"></td>
            <td>${deathsdisguise.name}</td>
            <td>${deathsdisguise.requiredLVL}</td>
            <td>${deathsdisguise.description}</td>
            <td>${deathsdisguise.type2}</td>
            <td>${deathsdisguise.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
