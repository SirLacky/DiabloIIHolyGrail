<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Heavens Breathren</title>
</head>
<body>
<h1>Heavens Breathren:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${heavensbreathren}" var="heavensbreathren">
<table>
        <tr>
            <td><img src="${heavensbreathren.jpg}"></td>
            <td>${heavensbreathren.name}</td>
            <td>${heavensbreathren.requiredLVL}</td>
            <td>${heavensbreathren.description}</td>
            <td>${heavensbreathren.type2}</td>
            <td>${heavensbreathren.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>