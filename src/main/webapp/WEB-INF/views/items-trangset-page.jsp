<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>TRANG-OULS AVATAR</title>
</head>
<body>
<h1>TRANG-OULS AVATAR:</h1>
<hr>
<a href="/main" class="buttonBlue">BACK</a>
<hr>
    <c:forEach items="${trangoulsavatar}" var="trangoulsavatar">
<table>
        <tr>
            <td><img src="${trangoulsavatar.jpg}"></td>
            <td>${trangoulsavatar.name}</td>
            <td>${trangoulsavatar.requiredLVL}</td>
            <td>${trangoulsavatar.description}</td>
            <td>${trangoulsavatar.type2}</td>
            <td>${trangoulsavatar.stats}</td>
            <br>
        </tr>
</table>
    </c:forEach>
</body>
</html>