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
    <br>
    <div>
        <form method="post" action="${pageContext.request.contextPath}/registerMethod">
            <div>
                <label for="UserLastName">姓</label>
                <input type="text" name="UserLastName" id="UserLastName" required>
            </div>
            <div>
                <label for="UserFirstName">名</label>
                <input type="text" name="UserFirstName" id="UserFirstName" required>
            </div>
            <div>
                <label>性别</label>
                <div>
                    <label>
                        <input type="radio" name="UserGender" value="1" checked>男
                    </label>
                </div>
                <div>
                    <label>
                        <input type="radio" name="UserGender" value="2">女
                    </label>
                </div>
            </div>
            <div>
                <label for="UserPhone">手机号</label>
                <input type="tel" name="UserPhone" id="UserPhone" required>
            </div>
            <div>
                <label for="UserEmail">邮箱</label>
                <input type="email" name="UserEmail" id="UserEmail" required>
            </div>
            <div>
                <label for="UserPassword">密码</label>
                <input type="password" name="UserPassword" id="UserPassword" required>
            </div>
            <div>
                <label for="UserPasswordConfirm">确认密码</label>
                <input type="password" name="UserPasswordConfirm" id="UserPasswordConfirm" required>
            </div>
            <button type="submit">提交注册</button>
        </form>
    </div>
</div>


<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

