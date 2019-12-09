<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Tal Rashas Wrappings</title>
</head>
<body>
<h1>Tal Rashas Wrappings:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${talrashaswrappings}" var="talrashaswrappings">
<table>
        <tr>
            <td><img src="${talrashaswrappings.jpg}"></td>
            <td>${talrashaswrappings.name}</td>
            <td>${talrashaswrappings.requiredLVL}</td>
            <td>${talrashaswrappings.description}</td>
            <td>${talrashaswrappings.type2}</td>
            <td>${talrashaswrappings.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>