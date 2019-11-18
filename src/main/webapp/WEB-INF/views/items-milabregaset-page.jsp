<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Milabregas Regalia</title>
</head>
<body>
<h1>Milabregas Regalia:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${milabregasregalia}" var="milabregasregalia">
<table>
        <tr>
            <td><img src="${milabregasregalia.jpg}"></td>
            <td>${milabregasregalia.name}</td>
            <td>${milabregasregalia.requiredLVL}</td>
            <td>${milabregasregalia.description}</td>
            <td>${milabregasregalia.type2}</td>
            <td>${milabregasregalia.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>