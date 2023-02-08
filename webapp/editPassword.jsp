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
        <form method="post" action="${pageContext.request.contextPath}/editCustomerPassword">
            <div>
                <input type="UserId" name="UserId" value="${sessionScope.loginUser.userId}" id="UserId" required readonly hidden>
            </div>
            <div>
                <label for="UserPassword">请输入新密码</label>
                <input type="password" name="UserPassword" id="UserPassword" required>
            </div>
            <div>
                <label for="EditPasswordConfirm">请确认新密码</label>
                <input type="password" name="EditPasswordConfirm" id="EditPasswordConfirm" required>
            </div>

            <button type="submit">提交修改</button>
        </form>
        <div>
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToPersonalCustomer">取消</a>
        </div>
    </div>

    <div>
        <p>注:修改密码后需要重新登录</p>
    </div>

</div>


<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

