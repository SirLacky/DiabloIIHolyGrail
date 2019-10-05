<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Staves</title>
</head>
<body>
<h1>Staves:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${staves}" var="staves">
<table>
        <tr>
            <td><img src="${staves.jpg}"></td>
            <td>${staves.name}</td>
            <td>${staves.requiredLVL}</td>
            <td>${staves.description}</td>
            <td>${staves.type2}</td>
            <td>${staves.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
