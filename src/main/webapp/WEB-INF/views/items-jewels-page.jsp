<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Jewels</title>
</head>
<body>
<h1>Jewels:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${jewels}" var="jewels">
<table>
        <tr>
            <td><img src="${jewels.jpg}"></td>
            <td>${jewels.name}</td>
            <td>${jewels.requiredLVL}</td>
            <td>${jewels.description}</td>
            <td>${jewels.type2}</td>
            <td>${jewels.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>

</body>
</html>
