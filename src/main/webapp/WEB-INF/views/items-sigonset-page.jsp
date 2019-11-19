<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Sigons Complete Steel</title>
</head>
<body>
<h1>Sigons Complete Steel:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${sigonscompletesteel}" var="sigonscompletesteel">
<table>
        <tr>
            <td><img src="${sigonscompletesteel.jpg}"></td>
            <td>${sigonscompletesteel.name}</td>
            <td>${sigonscompletesteel.requiredLVL}</td>
            <td>${sigonscompletesteel.description}</td>
            <td>${sigonscompletesteel.type2}</td>
            <td>${sigonscompletesteel.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>