<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Mavinas Battle Hymn</title>
</head>
<body>
<h1>Mavinas Battle Hymn:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${mavinasbattlehymn}" var="mavinasbattlehymn">
<table>
        <tr>
            <td><img src="${mavinasbattlehymn.jpg}"></td>
            <td>${mavinasbattlehymn.name}</td>
            <td>${mavinasbattlehymn.requiredLVL}</td>
            <td>${mavinasbattlehymn.description}</td>
            <td>${mavinasbattlehymn.type2}</td>
            <td>${mavinasbattlehymn.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>