<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/LoginAndRegister.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <title>保时捷中国 - ElimWorks</title>
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div class="registerBox">
    <p>已成功提交申请,请耐心等待</p>
    <p>申请会在3个工作日内答复，注意查看信息</p>
    <a href="${pageContext.request.contextPath}/index.jsp">返回主页</a>
</div>





<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>


</body>
</html>

