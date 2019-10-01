<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Armor</title>
</head>
<body>
<h1>Armor:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${armor}" var="armor">
<table>
        <tr>
            <td><img src="${armor.jpg}"></td>
            <td>${armor.name}</td>
            <td>${armor.requiredLVL}</td>
            <td>${armor.description}</td>
            <td>${armor.type2}</td>
            <td>${armor.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
