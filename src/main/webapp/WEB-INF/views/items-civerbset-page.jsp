<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Civerbs Vestments</title>
</head>
<body>
<h1>Civerbs Vestments:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${civerbsvestments}" var="civerbsvestments">
<table>
        <tr>
            <td><img src="${civerbsvestments.jpg}"></td>
            <td>${civerbsvestments.name}</td>
            <td>${civerbsvestments.requiredLVL}</td>
            <td>${civerbsvestments.description}</td>
            <td>${civerbsvestments.type2}</td>
            <td>${civerbsvestments.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
