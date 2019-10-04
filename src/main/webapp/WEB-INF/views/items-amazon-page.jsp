<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Amazon Items</title>
</head>
<body>
<h1>Amazon Items:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${amazon}" var="amazon">
<table>
        <tr>
            <td><img src="${amazon.jpg}"></td>
            <td>${amazon.name}</td>
            <td>${amazon.requiredLVL}</td>
            <td>${amazon.description}</td>
            <td>${amazon.type2}</td>
            <td>${amazon.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
