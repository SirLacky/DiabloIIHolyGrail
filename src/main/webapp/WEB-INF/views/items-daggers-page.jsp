<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Daggers</title>
</head>
<body>
<h1>Daggers:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${daggers}" var="daggers">
<table>
        <tr>
            <td><img src="${daggers.jpg}"></td>
            <td>${daggers.name}</td>
            <td>${daggers.requiredLVL}</td>
            <td>${daggers.description}</td>
            <td>${daggers.type2}</td>
            <td>${daggers.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
