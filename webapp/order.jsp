<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>保时捷中国 - ElimWorks</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/common.css" type="text/css">
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div class="commonBox">
    <div>
        <table>
            <thead>
            <tr>
                <th>用户名</th>
                <th>用户手机号</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${sessionScope.loginUser.userLastName}${sessionScope.loginUser.userFirstName}</td>
                <td>${sessionScope.loginUser.userPhone}</td>
            </tr>
            </tbody>

            <thead>
            <tr>
                <th>车型名称</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.auto.autoName}</td>
            </tr>
            </tbody>

            <thead>
            <tr>
                <th>漆水类型</th>
                <th>车身颜色</th>
                <th>价格</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.color.colorType}</td>
                <td>${requestScope.color.colorName}</td>
                <td>${requestScope.color.colorPrice}</td>
            </tr>
            </tbody>

            <thead>
            <tr>
                <th>汽车轮毂</th>
                <th>车轮大小</th>
                <th>价格</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.wheel.wheelName}</td>
                <td>${requestScope.wheel.wheelSize}</td>
                <td>${requestScope.wheel.wheelPrice}</td>
            </tr>
            </tbody>

            <thead>
            <tr>
                <th>汽车内饰</th>
                <th>价格</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.trim.trimName}</td>
                <td>${requestScope.trim.trimPrice}</td>
            </tr>
            </tbody>

            <thead>
            <tr>
                <th>总价格</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.auto.autoPrice + requestScope.color.colorPrice + requestScope.wheel.wheelPrice + requestScope.trim.trimPrice}</td>
            </tr>
            </tbody>

            <thead>
            <tr>
                <th>经销商名称</th>
                <th>经销商省份</th>
                <th>经销商城市</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.agency.agencyName}</td>
                <td>${requestScope.agency.agencyProvince}</td>
                <td>${requestScope.agency.agencyCity}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.userStatus == 'Customer' && requestScope.userRegisterState.size() == 0}">
        <div>
            <form method="post" action="${pageContext.request.contextPath}/placeOrder">
                <input name="orderAgency" id="orderAgency" readonly type="hidden" value="${requestScope.agency.agencyId}">
                <input name="orderUserId" id="orderUserId" readonly type="hidden" value="${sessionScope.loginUser.userId}">
                <input name="orderUserName" id="orderUserName" readonly type="hidden" value="${sessionScope.loginUser.userLastName}${sessionScope.loginUser.userFirstName}">
                <input name="orderUserPhone" id="orderUserPhone" readonly type="hidden" value="${sessionScope.loginUser.userPhone}">
                <input name="orderAutoName" id="orderAutoName" readonly type="hidden" value="${requestScope.auto.autoName}">
                <input name="orderColorName" id="orderColorName" readonly type="hidden" value="${requestScope.color.colorName}">
                <input name="orderWheelName" id="orderWheelName" readonly type="hidden" value="${requestScope.wheel.wheelName}">
                <input name="orderWheelSize" id="orderWheelSize" readonly type="hidden" value="${requestScope.wheel.wheelSize}">
                <input name="orderTrimName" id="orderTrimName" readonly type="hidden" value="${requestScope.trim.trimName}">
                <input name="orderTotalPrice" id="orderTotalPrice" readonly type="hidden" value="${requestScope.auto.autoPrice + requestScope.color.colorPrice + requestScope.wheel.wheelPrice + requestScope.trim.trimPrice}">
                <p>支付定金并提交给经销商</p>
                <button type="submit">支付 5000￥</button>
                <p>注:下单后如取消订单只返还70%的定金</p>
            </form>
        </div>
    </c:if>
    <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.userStatus == 'Administrator'}">
        <p>官方无法通过此途径下单</p>
    </c:if>
    <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.userStatus == 'Agency'}">
        <p>经销商无法通过此途径下单</p>
    </c:if>
    <c:if test="${sessionScope.loginUser == null}">
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/login.jsp">
            <p>请登录</p>
        </a>
    </c:if>
    <c:if test="${requestScope.userRegisterState.size() != 0}">
        <p>该账户的经销商申请正在进行中，暂时无法下单！</p>
    </c:if>


</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>
