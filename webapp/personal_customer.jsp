<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/common.css" type="text/css">
    <title>保时捷中国 - ElimWorks</title>
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div class="commonBox">
    <p>customer</p>

    <div>
        <p>未完成订单:</p>
        <table>
            <thead>
            <tr>
                <th>订单编号</th>
                <th>经销商</th>
                <th>车型</th>
                <th>车漆</th>
                <th>车轮</th>
                <th>车轮尺寸</th>
                <th>内饰</th>
                <th>总价</th>
                <th>库存状态</th>
                <th>交易状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.ordersByUserId}" var="orderByUserId" step="1">
                <tr>
                    <td>${orderByUserId.orderId}</td>
                    <td>${orderByUserId.orderAgency}</td>
                    <td>${orderByUserId.orderAutoName}</td>
                    <td>${orderByUserId.orderColorName}</td>
                    <td>${orderByUserId.orderWheelName}</td>
                    <td>${orderByUserId.orderWheelSize}</td>
                    <td>${orderByUserId.orderTrimName}</td>
                    <td>${orderByUserId.orderTotalPrice}</td>
                    <td>${orderByUserId.orderCompleteness == 0?(orderByUserId.orderInventory == 1?'有现车':(orderByUserId.orderTransmit == 1?'已订车':'需订车')):'交易完成'}</td>
                    <td>${orderByUserId.orderCompleteness == 0?'交易未完成':(orderByUserId.orderCompleteness == 1?'交易完成':'订单已取消')}</td>
                    <c:if test="${orderByUserId.orderCompleteness == 0}">
                        <td>
                            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/orderCancel?orderId=${orderByUserId.orderId}">取消订单</a>
                        </td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <p>如有现车,请择时现场看车</p>
    </div>
    <br>
    <div>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToEditCustomer?userId=${sessionScope.loginUser.userId}">编辑个人信息</a>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/editPassword.jsp">修改密码</a>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/exitMethod">退出当前账号</a>
        <p>加入我们:</p>
        <c:if test="${requestScope.incompleteOrdersByUserId.size() != 0}">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/error_goToRegisterAgency.jsp">申请成为经销商</a>
        </c:if>
        <c:if test="${requestScope.incompleteOrdersByUserId.size() == 0}">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToregisterAgencyMethod">申请成为经销商</a>
        </c:if>
    </div>

</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

