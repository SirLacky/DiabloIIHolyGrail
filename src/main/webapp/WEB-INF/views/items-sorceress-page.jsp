<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Sorcerres Items</title>
</head>
<body>
<h1>Sorcerres Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${sorceress}" var="sorceress">
<table>
        <tr>
            <td><img src="${sorceress.jpg}"></td>
            <td>${sorceress.name}</td>
            <td>${sorceress.requiredLVL}</td>
            <td>${sorceress.description}</td>
            <td>${sorceress.type2}</td>
            <td>${sorceress.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
