<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Polearms</title>
</head>
<body>
<h1>Polearms:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${polearms}" var="polearms">
<table>
        <tr>
            <td><img src="${polearms.jpg}"></td>
            <td>${polearms.name}</td>
            <td>${polearms.requiredLVL}</td>
            <td>${polearms.description}</td>
            <td>${polearms.type2}</td>
            <td>${polearms.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
