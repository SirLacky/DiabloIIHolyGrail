<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Infernal Tools</title>
</head>
<body>
<h1>Infernal Tools:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${infernaltools}" var="infernaltools">
<table>
        <tr>
            <td><img src="${infernaltools.jpg}"></td>
            <td>${infernaltools.name}</td>
            <td>${infernaltools.requiredLVL}</td>
            <td>${infernaltools.description}</td>
            <td>${infernaltools.type2}</td>
            <td>${infernaltools.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>