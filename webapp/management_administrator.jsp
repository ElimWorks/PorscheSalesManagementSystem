<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/management.css" type="text/css">
    <title>保时捷中国 - ElimWorks</title>
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div class="managementBox">
    <br>
    <div>
        <h2>经销商申请</h2>
        <table>
            <thead>
            <tr>
                <th>名称</th>
                <th>省份</th>
                <th>城市</th>
                <th>启动资金</th>
                <th>账号拥有人ID</th>
                <th>审核状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.agenciesForNoApproval}" var="agencyForNoApproval" step="1">
                <tr>
                    <td>${agencyForNoApproval.agencyName}</td>
                    <td>${agencyForNoApproval.agencyProvince}</td>
                    <td>${agencyForNoApproval.agencyCity}</td>
                    <td>${agencyForNoApproval.agencyCapital}￥</td>
                    <td>${agencyForNoApproval.agencyUserId}</td>
                    <td>${agencyForNoApproval.agencyPermit == 1?'已通过':'未通过'}</td>
                    <td>
                        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/agencyRatify?agencyId=${agencyForNoApproval.agencyId}&agencyUserId=${agencyForNoApproval.agencyUserId}">批准</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/agencyRefuse?agencyId=${agencyForNoApproval.agencyId}">拒绝</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div>
        <h2>订单申请</h2>
        <table>
            <thead>
            <tr>
                <th>订单编号</th>
                <th>经销商名称</th>
                <th>车型</th>
                <th>车漆</th>
                <th>车轮</th>
                <th>内饰</th>
                <th>出厂价</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.ordersNeedTransmit}" var="orderNeedTransmit" step="1">
                <tr>
                    <td>${orderNeedTransmit.orderId}</td>
                    <td>${orderNeedTransmit.orderAgency}</td>
                    <td>${orderNeedTransmit.orderAutoName}</td>
                    <td>${orderNeedTransmit.orderColorName}</td>
                    <td>${orderNeedTransmit.orderWheelName}</td>
                    <td>${orderNeedTransmit.orderTrimName}</td>
                    <td>${orderNeedTransmit.orderTotalPrice / 2}￥</td>
                    <td>
                        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/deliverCar?orderId=${orderNeedTransmit.orderId}">发货</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToManagenmentAdministratorAuto">车型管理</a>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToManagenmentAdministratorUser">用户管理</a>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToManagenmentAdministratorPart">选配管理</a>
    </div>



</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

