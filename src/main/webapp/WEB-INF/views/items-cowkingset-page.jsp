<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Cow King Leathers</title>
</head>
<body>
<h1>Cow King Leathers:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${cowkingsleathers}" var="cowkingsleathers">
<table>
        <tr>
            <td><img src="${cowkingsleathers.jpg}"></td>
            <td>${cowkingsleathers.name}</td>
            <td>${cowkingsleathers.requiredLVL}</td>
            <td>${cowkingsleathers.description}</td>
            <td>${cowkingsleathers.type2}</td>
            <td>${cowkingsleathers.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>