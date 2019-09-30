<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Throwing Weapons</title>
</head>
<body>
<h1>Throwing Weapons:</h1>
<hr>

    <c:forEach items="${throwingweapons}" var="throwingweapons">
<table>
        <tr>
            <td><img src="${throwingweapons.jpg}"></td>
            <td>${throwingweapons.name}</td>
            <td>${throwingweapons.requiredLVL}</td>
            <td>${throwingweapons.description}</td>
            <td>${throwingweapons.type2}</td>
            <td>${throwingweapons.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
