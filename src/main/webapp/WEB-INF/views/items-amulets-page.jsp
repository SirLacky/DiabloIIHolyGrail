<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Amulets</title>
</head>
<body>
<h1>Amulets:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${amulets}" var="amulets">
<table>
        <tr>
            <td><img src="${amulets.jpg}"></td>
            <td>${amulets.name}</td>
            <td>${amulets.requiredLVL}</td>
            <td>${amulets.description}</td>
            <td>${amulets.type2}</td>
            <td>${amulets.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
