<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Assassin Items</title>
</head>
<body>
<h1>Assassin Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${assassin}" var="assassin">
<table>
        <tr>
            <td><img src="${assassin.jpg}"></td>
            <td>${assassin.name}</td>
            <td>${assassin.requiredLVL}</td>
            <td>${assassin.description}</td>
            <td>${assassin.type2}</td>
            <td>${assassin.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
