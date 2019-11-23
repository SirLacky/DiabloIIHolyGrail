<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Bul-Kathos Children</title>
</head>
<body>
<h1>Bul-Kathos Children:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${bulkathoschildren}" var="bulkathoschildren">
<table>
        <tr>
            <td><img src="${bulkathoschildren.jpg}"></td>
            <td>${bulkathoschildren.name}</td>
            <td>${bulkathoschildren.requiredLVL}</td>
            <td>${bulkathoschildren.description}</td>
            <td>${bulkathoschildren.type2}</td>
            <td>${bulkathoschildren.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>