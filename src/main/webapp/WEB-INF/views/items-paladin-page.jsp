<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Paladin Items</title>
</head>
<body>
<h1>Paladin Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${paladin}" var="paladin">
<table>
        <tr>
            <td><img src="${paladin.jpg}"></td>
            <td>${paladin.name}</td>
            <td>${paladin.requiredLVL}</td>
            <td>${paladin.description}</td>
            <td>${paladin.type2}</td>
            <td>${paladin.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
