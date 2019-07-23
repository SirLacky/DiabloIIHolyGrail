<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="media/css/style.css">
    <title>Main Page</title>
</head>
<body>
<h1>Welcome on Main Page</h1>
<hr>

<h2> Items: </h2>

<button type="submit" value="headgear">HEADGEAR</button>
<a href="/rings" class="button">RINGS</a>


<hr>
<a href="/logout" class="button">LOG OUT</a>
</body>
</html>