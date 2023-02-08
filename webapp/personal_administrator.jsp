<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <title>保时捷中国 - ElimWorks</title>
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div>
    <p>administrator</p>
    <a href="${pageContext.request.contextPath}/goToManagenmentAdministrator">官方管理</a>
    <a href="${pageContext.request.contextPath}/exitMethod">退出当前账号</a>
</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

