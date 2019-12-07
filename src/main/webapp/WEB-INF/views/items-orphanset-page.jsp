<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Orphans Call</title>
</head>
<body>
<h1>Orphans Call:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${orphanscall}" var="orphanscall">
<table>
        <tr>
            <td><img src="${orphanscall.jpg}"></td>
            <td>${orphanscall.name}</td>
            <td>${orphanscall.requiredLVL}</td>
            <td>${orphanscall.description}</td>
            <td>${orphanscall.type2}</td>
            <td>${orphanscall.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>