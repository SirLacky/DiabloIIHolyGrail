<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Rings</title>
</head>
<body>
<h1>Rings:</h1>
<hr>

    <c:forEach items="${rings}" var="rings">
<table>
        <tr>
            <td><img src="${rings.jpg}"></td>
            <td>${rings.name}</td>
            <td>${rings.requiredLVL}</td>
            <td>${rings.description}</td>
            <td>${rings.type2}</td>
            <td>${rings.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
