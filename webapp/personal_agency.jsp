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
    <p>agency</p>
    <a class="headerBoxElementA" href="error.jsp">编辑经销商信息</a>
    <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToManagenmentAgency?agencyId=${sessionScope.agency.agencyId}">经销商管理</a>
    <a class="headerBoxElementA" href="${pageContext.request.contextPath}/exitMethod">退出当前账号</a>
</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

