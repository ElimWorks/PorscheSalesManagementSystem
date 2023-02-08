<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
     <div>
         <br>
         <h2>订单</h2>
         <table>
             <thead>
             <tr>
                 <th>订单编号</th>
                 <th>用户姓名</th>
                 <th>用户手机号</th>
                 <th>车型</th>
                 <th>车漆</th>
                 <th>车轮</th>
                 <th>内饰</th>
                 <th>总价</th>
                 <th>库存情况</th>
                 <th>订单状态</th>
                 <th>交易状态</th>
             </tr>
             </thead>
             <tbody>
                 <c:forEach items="${requestScope.orders}" var="order" step="1">
                     <c:if test="${order.orderCompleteness == 0}">
                         <tr>
                             <td>${order.orderId}</td>
                             <td>${order.orderUserName}</td>
                             <td>${order.orderUserPhone}</td>
                             <td>${order.orderAutoName}</td>
                             <td>${order.orderColorName}</td>
                             <td>${order.orderWheelName}</td>
                             <td>${order.orderTrimName}</td>
                             <td>${order.orderTotalPrice}</td>
                             <td>${order.orderInventory == 1?'有库存':'无库存'}</td>
                             <td>${order.orderTransmit == 1?'已向官方提交订单':'未或无需向官方提交订单'}</td>
                             <td>${order.orderCompleteness == 0?'未完成':'已完成'}</td>
                             <c:if test="${order.orderInventory == 0 && order.orderTransmit == 0}">
                                 <td>
                                     <a class="headerBoxElementA" href="${pageContext.request.contextPath}/orderCar?orderId=${order.orderId}">向官方订车</a>
                                 </td>
                             </c:if>
                             <c:if test="${order.orderInventory == 1}">
                                 <td>
                                     <a class="headerBoxElementA" href="${pageContext.request.contextPath}/orderComplete?orderId=${order.orderId}">完成订单</a>
                                 </td>
                             </c:if>
                         </tr>
                     </c:if>
                 </c:forEach>
             </tbody>
         </table>
     </div>
    <div>
        <h2>库存</h2>
        <table>
            <thead>
            <tr>
                <th>库存编号</th>
                <th>车型</th>
                <th>车漆</th>
                <th>车轮</th>
                <th>内饰</th>
                <th>总价</th>
                <th>上架状态</th>
                <th>预订状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.inventories}" var="inventory" step="1">
                <c:if test="${inventory.inventoryCompleteness == 0}">
                    <tr>
                        <td>${inventory.inventoryId}</td>
                        <td>${inventory.inventoryAutoType}</td>
                        <td>${inventory.inventoryAutoColor}</td>
                        <td>${inventory.inventoryAutoWheel}</td>
                        <td>${inventory.inventoryAutoTrim}</td>
                        <td>${inventory.inventoryAutoPrice}</td>
                        <td>${inventory.inventoryPutaway == 1?'在售':'已下架'}</td>
                        <td>${inventory.inventoryReserve == 1?'已被预订':'未预订'}</td>
                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

