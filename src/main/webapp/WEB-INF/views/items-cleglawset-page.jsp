<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Cleglaws Brace</title>
</head>
<body>
<h1>Cleglaws Brace:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${cleglawsbrace}" var="cleglawsbrace">
<table>
        <tr>
            <td><img src="${cleglawsbrace.jpg}"></td>
            <td>${cleglawsbrace.name}</td>
            <td>${cleglawsbrace.requiredLVL}</td>
            <td>${cleglawsbrace.description}</td>
            <td>${cleglawsbrace.type2}</td>
            <td>${cleglawsbrace.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>
