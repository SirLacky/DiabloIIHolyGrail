<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>The Disciple</title>
</head>
<body>
<h1>The Disciple:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${thedisciple}" var="thedisciple">
<table>
        <tr>
            <td><img src="${thedisciple.jpg}"></td>
            <td>${thedisciple.name}</td>
            <td>${thedisciple.requiredLVL}</td>
            <td>${thedisciple.description}</td>
            <td>${thedisciple.type2}</td>
            <td>${thedisciple.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>