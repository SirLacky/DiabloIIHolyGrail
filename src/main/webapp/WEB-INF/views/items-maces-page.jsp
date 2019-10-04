<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Maces</title>
</head>
<body>
<h1>Maces:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${maces}" var="maces">
<table>
        <tr>
            <td><img src="${maces.jpg}"></td>
            <td>${maces.name}</td>
            <td>${maces.requiredLVL}</td>
            <td>${maces.description}</td>
            <td>${maces.type2}</td>
            <td>${maces.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
