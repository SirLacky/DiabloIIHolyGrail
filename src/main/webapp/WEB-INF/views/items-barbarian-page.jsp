<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Barbarian Items</title>
</head>
<body>
<h1>Barbarian Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${barbarian}" var="barbarian">
<table>
        <tr>
            <td><img src="${barbarian.jpg}"></td>
            <td>${barbarian.name}</td>
            <td>${barbarian.requiredLVL}</td>
            <td>${barbarian.description}</td>
            <td>${barbarian.type2}</td>
            <td>${barbarian.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
