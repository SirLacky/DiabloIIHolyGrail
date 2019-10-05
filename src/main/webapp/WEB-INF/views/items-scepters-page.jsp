<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Scepters</title>
</head>
<body>
<h1>Scepters:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${scepters}" var="scepters">
<table>
        <tr>
            <td><img src="${scepters.jpg}"></td>
            <td>${scepters.name}</td>
            <td>${scepters.requiredLVL}</td>
            <td>${scepters.description}</td>
            <td>${scepters.type2}</td>
            <td>${scepters.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
