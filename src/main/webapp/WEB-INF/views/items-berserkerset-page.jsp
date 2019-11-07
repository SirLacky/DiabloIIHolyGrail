<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Berserkers Arsenal</title>
</head>
<body>
<h1>Berserkers Arsenal:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${berserkersarsenal}" var="berserkersarsenal">
<table>
        <tr>
            <td><img src="${berserkersarsenal.jpg}"></td>
            <td>${berserkersarsenal.name}</td>
            <td>${berserkersarsenal.requiredLVL}</td>
            <td>${berserkersarsenal.description}</td>
            <td>${berserkersarsenal.type2}</td>
            <td>${berserkersarsenal.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
