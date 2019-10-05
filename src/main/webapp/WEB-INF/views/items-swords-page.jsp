<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Swords</title>
</head>
<body>
<h1>Swords:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${swords}" var="swords">
<table>
        <tr>
            <td><img src="${swords.jpg}"></td>
            <td>${swords.name}</td>
            <td>${swords.requiredLVL}</td>
            <td>${swords.description}</td>
            <td>${swords.type2}</td>
            <td>${swords.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
