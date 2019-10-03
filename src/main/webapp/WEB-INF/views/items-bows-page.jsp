<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Bows</title>
</head>
<body>
<h1>Bows:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${bows}" var="bows">
<table>
        <tr>
            <td><img src="${bows.jpg}"></td>
            <td>${bows.name}</td>
            <td>${bows.requiredLVL}</td>
            <td>${bows.description}</td>
            <td>${bows.type2}</td>
            <td>${bows.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
