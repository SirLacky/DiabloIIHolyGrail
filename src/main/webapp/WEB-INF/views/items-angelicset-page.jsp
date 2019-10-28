<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Angelic Raiment</title>
</head>
<body>
<h1>Angelic Raiment:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${angelicraiment}" var="angelicraiment">
<table>
        <tr>
            <td><img src="${angelicraiment.jpg}"></td>
            <td>${angelicraiment.name}</td>
            <td>${angelicraiment.requiredLVL}</td>
            <td>${angelicraiment.description}</td>
            <td>${angelicraiment.type2}</td>
            <td>${angelicraiment.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
