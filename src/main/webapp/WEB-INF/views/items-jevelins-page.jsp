<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Jevelins</title>
</head>
<body>
<h1>Jevelins:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${jevelins}" var="jevelins">
<table>
        <tr>
            <td><img src="${jevelins.jpg}"></td>
            <td>${jevelins.name}</td>
            <td>${jevelins.requiredLVL}</td>
            <td>${jevelins.description}</td>
            <td>${jevelins.type2}</td>
            <td>${jevelins.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
