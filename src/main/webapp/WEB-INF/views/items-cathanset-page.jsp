<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Cathans Traps</title>
</head>
<body>
<h1>Cathans Traps:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${cathanstraps}" var="cathanstraps">
<table>
        <tr>
            <td><img src="${cathanstraps.jpg}"></td>
            <td>${cathanstraps.name}</td>
            <td>${cathanstraps.requiredLVL}</td>
            <td>${cathanstraps.description}</td>
            <td>${cathanstraps.type2}</td>
            <td>${cathanstraps.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
