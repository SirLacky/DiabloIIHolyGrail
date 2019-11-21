<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Vidalas Rig</title>
</head>
<body>
<h1>Vidalas Rig:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${vidalasrig}" var="vidalasrig">
<table>
        <tr>
            <td><img src="${vidalasrig.jpg}"></td>
            <td>${vidalasrig.name}</td>
            <td>${vidalasrig.requiredLVL}</td>
            <td>${vidalasrig.description}</td>
            <td>${vidalasrig.type2}</td>
            <td>${vidalasrig.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>