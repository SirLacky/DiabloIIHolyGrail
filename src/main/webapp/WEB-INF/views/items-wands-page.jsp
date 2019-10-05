<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Wands</title>
</head>
<body>
<h1>Wands:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${wands}" var="wands">
<table>
        <tr>
            <td><img src="${wands.jpg}"></td>
            <td>${wands.name}</td>
            <td>${wands.requiredLVL}</td>
            <td>${wands.description}</td>
            <td>${wands.type2}</td>
            <td>${wands.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
