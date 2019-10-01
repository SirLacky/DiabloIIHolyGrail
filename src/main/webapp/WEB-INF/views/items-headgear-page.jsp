<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Headgear</title>
</head>
<body>
<h1>Headgear:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${headgear}" var="headgear">
<table>
        <tr>
            <td><img src="${headgear.jpg}"></td>
            <td>${headgear.name}</td>
            <td>${headgear.requiredLVL}</td>
            <td>${headgear.description}</td>
            <td>${headgear.type2}</td>
            <td>${headgear.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
