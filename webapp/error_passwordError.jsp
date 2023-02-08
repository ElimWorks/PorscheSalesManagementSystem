<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>保时捷中国 - ElimWorks</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/error.css" type="text/css">
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div>
    <p class="errorBoxP">密码或账号错误！！</p>
    <a href="login.jsp">返回</a>
</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>
