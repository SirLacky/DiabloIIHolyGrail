<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Griswolds Legacy</title>
</head>
<body>
<h1>Griswolds Legacy:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${griswoldslegacy}" var="griswoldslegacy">
<table>
        <tr>
            <td><img src="${griswoldslegacy.jpg}"></td>
            <td>${griswoldslegacy.name}</td>
            <td>${griswoldslegacy.requiredLVL}</td>
            <td>${griswoldslegacy.description}</td>
            <td>${griswoldslegacy.type2}</td>
            <td>${griswoldslegacy.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>