<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Najs Ancient Vestige</title>
</head>
<body>
<h1>Najs Ancient Vestige:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${najsancientvestige}" var="najsancientvestige">
<table>
        <tr>
            <td><img src="${najsancientvestige.jpg}"></td>
            <td>${najsancientvestige.name}</td>
            <td>${najsancientvestige.requiredLVL}</td>
            <td>${najsancientvestige.description}</td>
            <td>${najsancientvestige.type2}</td>
            <td>${najsancientvestige.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
