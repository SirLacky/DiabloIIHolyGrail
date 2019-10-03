<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Druid Items</title>
</head>
<body>
<h1>Druid Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${druid}" var="druid">
<table>
        <tr>
            <td><img src="${druid.jpg}"></td>
            <td>${druid.name}</td>
            <td>${druid.requiredLVL}</td>
            <td>${druid.description}</td>
            <td>${druid.type2}</td>
            <td>${druid.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
