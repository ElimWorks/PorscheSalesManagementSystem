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

<div class="loginBox">
    <br>
    <div>
        <form class="loginBoxFrom" method="post" action="${pageContext.request.contextPath}/loginMethod">
            <input class="loginBoxFromInput" type="account"  name="account" placeholder="账号" required>
            <input class="loginBoxFromInput" type="password" name="password" placeholder="密码" required>
            <button class="loginBoxFromButton" type="submit">登录</button>
        </form>
    </div>

    <div>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/registerUser.jsp">用户注册</a>
        <a class="headerBoxElementA" href="error.jsp">忘记密码</a>
    </div>
</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

