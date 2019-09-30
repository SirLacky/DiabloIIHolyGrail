<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Boots</title>
</head>
<body>
<h1>Boots:</h1>
<hr>

    <c:forEach items="${boots}" var="boots">
<table>
        <tr>
            <td><img src="${boots.jpg}"></td>
            <td>${boots.name}</td>
            <td>${boots.requiredLVL}</td>
            <td>${boots.description}</td>
            <td>${boots.type2}</td>
            <td>${boots.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
