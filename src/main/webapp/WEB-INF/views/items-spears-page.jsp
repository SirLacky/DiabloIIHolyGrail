<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Spears</title>
</head>
<body>
<h1>Spears:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${spears}" var="spears">
<table>
        <tr>
            <td><img src="${spears.jpg}"></td>
            <td>${spears.name}</td>
            <td>${spears.requiredLVL}</td>
            <td>${spears.description}</td>
            <td>${spears.type2}</td>
            <td>${spears.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
