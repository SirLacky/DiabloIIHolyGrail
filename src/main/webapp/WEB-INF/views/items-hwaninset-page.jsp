<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Hwanins Majesty</title>
</head>
<body>
<h1>Hwanins Majesty:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${hwaninsmajesty}" var="hwaninsmajesty">
<table>
        <tr>
            <td><img src="${hwaninsmajesty.jpg}"></td>
            <td>${hwaninsmajesty.name}</td>
            <td>${hwaninsmajesty.requiredLVL}</td>
            <td>${hwaninsmajesty.description}</td>
            <td>${hwaninsmajesty.type2}</td>
            <td>${hwaninsmajesty.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>