<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Axes</title>
</head>
<body>
<h1>Axes:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${axes}" var="axes">
<table>
        <tr>
            <td><img src="${axes.jpg}"></td>
            <td>${axes.name}</td>
            <td>${axes.requiredLVL}</td>
            <td>${axes.description}</td>
            <td>${axes.type2}</td>
            <td>${axes.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
