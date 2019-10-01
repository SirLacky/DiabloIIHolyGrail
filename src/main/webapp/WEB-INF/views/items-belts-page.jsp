<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Belts</title>
</head>
<body>
<h1>Belts:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${belts}" var="belts">
<table>
        <tr>
            <td><img src="${belts.jpg}"></td>
            <td>${belts.name}</td>
            <td>${belts.requiredLVL}</td>
            <td>${belts.description}</td>
            <td>${belts.type2}</td>
            <td>${belts.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
