<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Aldurs Watchtower</title>
</head>
<body>
<h1>Aldurs Watchtower:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${aldurswatchtower}" var="aldurswatchtower">
<table>
        <tr>
            <td><img src="${aldurswatchtower.jpg}"></td>
            <td>${aldurswatchtower.name}</td>
            <td>${aldurswatchtower.requiredLVL}</td>
            <td>${aldurswatchtower.description}</td>
            <td>${aldurswatchtower.type2}</td>
            <td>${aldurswatchtower.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>