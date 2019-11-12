<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Hsarus Defense</title>
</head>
<body>
<h1>Hsarus Defense:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${hsarusdefense}" var="hsarusdefense">
<table>
        <tr>
            <td><img src="${hsarusdefense.jpg}"></td>
            <td>${hsarusdefense.name}</td>
            <td>${hsarusdefense.requiredLVL}</td>
            <td>${hsarusdefense.description}</td>
            <td>${hsarusdefense.type2}</td>
            <td>${hsarusdefense.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
