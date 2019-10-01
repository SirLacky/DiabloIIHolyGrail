<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Necromancer Items</title>
</head>
<body>
<h1>Necromancer Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${necromancer}" var="necromancer">
<table>
        <tr>
            <td><img src="${necromancer.jpg}"></td>
            <td>${necromancer.name}</td>
            <td>${necromancer.requiredLVL}</td>
            <td>${necromancer.description}</td>
            <td>${necromancer.type2}</td>
            <td>${necromancer.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
