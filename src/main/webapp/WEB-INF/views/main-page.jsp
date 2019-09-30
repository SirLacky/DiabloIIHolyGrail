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

<a href="/headgear" class="button">HEADGEAR</a>
<a href="/rings" class="button">RINGS</a>
<a href="/amulets" class="button">AMULETS</a>
<a href="/charms" class="button">CHARMS</a>
<a href="/jewels" class="button">JEWELS</a>
<a href="/armor" class="button">ARMOR</a>
<a href="/gloves" class="button">GLOVES</a>
<a href="/boots" class="button">BOOTS</a>

<hr>
<a href="/logout" class="button">LOG OUT</a>
</body>
</html>
