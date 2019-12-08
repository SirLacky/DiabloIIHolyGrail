<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Sanders Folly</title>
</head>
<body>
<h1>Sanders Folly:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${sandersfolly}" var="sandersfolly">
<table>
        <tr>
            <td><img src="${sandersfolly.jpg}"></td>
            <td>${sandersfolly.name}</td>
            <td>${sandersfolly.requiredLVL}</td>
            <td>${sandersfolly.description}</td>
            <td>${sandersfolly.type2}</td>
            <td>${sandersfolly.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>