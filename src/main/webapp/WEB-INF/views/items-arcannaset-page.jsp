<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Arcanna Stricks</title>
</head>
<body>
<h1>Arcanna Stricks:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${arcannastricks}" var="arcannastricks">
<table>
        <tr>
            <td><img src="${arcannastricks.jpg}"></td>
            <td>${arcannastricks.name}</td>
            <td>${arcannastricks.requiredLVL}</td>
            <td>${arcannastricks.description}</td>
            <td>${arcannastricks.type2}</td>
            <td>${arcannastricks.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
