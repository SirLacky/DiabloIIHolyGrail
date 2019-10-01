<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Gloves</title>
</head>
<body>
<h1>Gloves:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${gloves}" var="gloves">
<table>
        <tr>
            <td><img src="${gloves.jpg}"></td>
            <td>${gloves.name}</td>
            <td>${gloves.requiredLVL}</td>
            <td>${gloves.description}</td>
            <td>${gloves.type2}</td>
            <td>${gloves.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
