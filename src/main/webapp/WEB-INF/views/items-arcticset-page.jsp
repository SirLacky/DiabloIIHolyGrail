<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Arctic Gear</title>
</head>
<body>
<h1>Arctic Gear:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${arcticgear}" var="arcticgear">
<table>
        <tr>
            <td><img src="${arcticgear.jpg}"></td>
            <td>${arcticgear.name}</td>
            <td>${arcticgear.requiredLVL}</td>
            <td>${arcticgear.description}</td>
            <td>${arcticgear.type2}</td>
            <td>${arcticgear.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
