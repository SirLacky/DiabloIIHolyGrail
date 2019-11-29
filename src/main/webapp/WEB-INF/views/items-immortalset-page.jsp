<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Immortal King</title>
</head>
<body>
<h1>Immortal King:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${immortalking}" var="immortalking">
<table>
        <tr>
            <td><img src="${immortalking.jpg}"></td>
            <td>${immortalking.name}</td>
            <td>${immortalking.requiredLVL}</td>
            <td>${immortalking.description}</td>
            <td>${immortalking.type2}</td>
            <td>${immortalking.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>