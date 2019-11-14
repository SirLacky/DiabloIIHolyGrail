<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Irathas Finery</title>
</head>
<body>
<h1>Irathas Finery:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${irathasfinery}" var="irathasfinery">
<table>
        <tr>
            <td><img src="${irathasfinery.jpg}"></td>
            <td>${irathasfinery.name}</td>
            <td>${irathasfinery.requiredLVL}</td>
            <td>${irathasfinery.description}</td>
            <td>${irathasfinery.type2}</td>
            <td>${irathasfinery.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>