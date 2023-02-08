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

<div class="managementBox_auto">
    <br>
    <div>
        <h2>所有车型</h2>
        <table>
            <thead>
            <tr>
                <th>汽车名称</th>
                <th>车型</th>
                <th>引擎类型</th>
                <th>车型设计</th>
                <th>0-100km/h(s)</th>
                <th>最高时速(km/h)</th>

                <th>发动机最大马力(Ps)</th>
                <th>发动机最大扭矩(Nm)</th>
                <th>发动机排量(cc)</th>
                <th>发动机最高转速(rpm)</th>
                <th>发动机设计</th>

                <th>电机最大马力(Ps)</th>
                <th>电机最大扭矩(Nm)</th>
                <th>纯电机续航里程(km)</th>
                <th>充电时间(h)</th>

                <th>价格(￥)</th>
                <th>销售状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.offcialAutos_718}" var="offcialAuto" step="1">
                <tr>
                    <td>${offcialAuto.autoName}</td>
                    <td>${offcialAuto.autoModel}</td>
                    <td>${offcialAuto.energyType}</td>
                    <td>${offcialAuto.bodyDesign}</td>
                    <td>${offcialAuto.zeroToHundredTime}</td>
                    <td>${offcialAuto.topTrackSpeed}</td>

                    <td>${offcialAuto.engineMaxPower}</td>
                    <td>${offcialAuto.engineMaxTorque}</td>
                    <td>${offcialAuto.displacemenet}</td>
                    <td>${offcialAuto.engineMaxSpeed}</td>
                    <td>${offcialAuto.designAndCylinders}</td>

                    <td>${offcialAuto.electromotorMaxPower}</td>
                    <td>${offcialAuto.electromotorMaxTorque}</td>
                    <td>${offcialAuto.drivingRange}</td>
                    <td>${offcialAuto.chargingTime}</td>

                    <td>${offcialAuto.autoPrice}</td>
                    <td>${offcialAuto.putaway == 1?'在售':'停售'}</td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">修改</a>
                    </td>
                    <c:if test="${offcialAuto.putaway == 1}">
                        <td>
                            <a class="headerBoxElementA" href="error.jsp">下架</a>
                        </td>
                    </c:if>
                    <c:if test="${offcialAuto.putaway == 0}">
                        <td>
                            <a class="headerBoxElementA" href="error.jsp">开售</a>
                        </td>
                    </c:if>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">删除</a>
                    </td>
                </tr>
            </c:forEach>

            <c:forEach items="${requestScope.offcialAutos_911}" var="offcialAuto" step="1">
                <tr>
                    <td>${offcialAuto.autoName}</td>
                    <td>${offcialAuto.autoModel}</td>
                    <td>${offcialAuto.energyType}</td>
                    <td>${offcialAuto.bodyDesign}</td>
                    <td>${offcialAuto.zeroToHundredTime}</td>
                    <td>${offcialAuto.topTrackSpeed}</td>

                    <td>${offcialAuto.engineMaxPower}</td>
                    <td>${offcialAuto.engineMaxTorque}</td>
                    <td>${offcialAuto.displacemenet}</td>
                    <td>${offcialAuto.engineMaxSpeed}</td>
                    <td>${offcialAuto.designAndCylinders}</td>

                    <td>${offcialAuto.electromotorMaxPower}</td>
                    <td>${offcialAuto.electromotorMaxTorque}</td>
                    <td>${offcialAuto.drivingRange}</td>
                    <td>${offcialAuto.chargingTime}</td>

                    <td>${offcialAuto.autoPrice}</td>
                    <td>${offcialAuto.putaway == 1?'在售':'停售'}</td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">修改</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">下架</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">删除</a>
                    </td>
                </tr>
            </c:forEach>

            <c:forEach items="${requestScope.offcialAutos_Taycan}" var="offcialAuto" step="1">
                <tr>
                    <td>${offcialAuto.autoName}</td>
                    <td>${offcialAuto.autoModel}</td>
                    <td>${offcialAuto.energyType}</td>
                    <td>${offcialAuto.bodyDesign}</td>
                    <td>${offcialAuto.zeroToHundredTime}</td>
                    <td>${offcialAuto.topTrackSpeed}</td>

                    <td>${offcialAuto.engineMaxPower}</td>
                    <td>${offcialAuto.engineMaxTorque}</td>
                    <td>${offcialAuto.displacemenet}</td>
                    <td>${offcialAuto.engineMaxSpeed}</td>
                    <td>${offcialAuto.designAndCylinders}</td>

                    <td>${offcialAuto.electromotorMaxPower}</td>
                    <td>${offcialAuto.electromotorMaxTorque}</td>
                    <td>${offcialAuto.drivingRange}</td>
                    <td>${offcialAuto.chargingTime}</td>

                    <td>${offcialAuto.autoPrice}</td>
                    <td>${offcialAuto.putaway == 1?'在售':'停售'}</td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">修改</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">下架</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">删除</a>
                    </td>
                </tr>
            </c:forEach>

            <c:forEach items="${requestScope.offcialAutos_Panamera}" var="offcialAuto" step="1">
                <tr>
                    <td>${offcialAuto.autoName}</td>
                    <td>${offcialAuto.autoModel}</td>
                    <td>${offcialAuto.energyType}</td>
                    <td>${offcialAuto.bodyDesign}</td>
                    <td>${offcialAuto.zeroToHundredTime}</td>
                    <td>${offcialAuto.topTrackSpeed}</td>

                    <td>${offcialAuto.engineMaxPower}</td>
                    <td>${offcialAuto.engineMaxTorque}</td>
                    <td>${offcialAuto.displacemenet}</td>
                    <td>${offcialAuto.engineMaxSpeed}</td>
                    <td>${offcialAuto.designAndCylinders}</td>

                    <td>${offcialAuto.electromotorMaxPower}</td>
                    <td>${offcialAuto.electromotorMaxTorque}</td>
                    <td>${offcialAuto.drivingRange}</td>
                    <td>${offcialAuto.chargingTime}</td>

                    <td>${offcialAuto.autoPrice}</td>
                    <td>${offcialAuto.putaway == 1?'在售':'停售'}</td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">修改</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">下架</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">删除</a>
                    </td>
                </tr>
            </c:forEach>

            <c:forEach items="${requestScope.offcialAutos_Macan}" var="offcialAuto" step="1">
                <tr>
                    <td>${offcialAuto.autoName}</td>
                    <td>${offcialAuto.autoModel}</td>
                    <td>${offcialAuto.energyType}</td>
                    <td>${offcialAuto.bodyDesign}</td>
                    <td>${offcialAuto.zeroToHundredTime}</td>
                    <td>${offcialAuto.topTrackSpeed}</td>

                    <td>${offcialAuto.engineMaxPower}</td>
                    <td>${offcialAuto.engineMaxTorque}</td>
                    <td>${offcialAuto.displacemenet}</td>
                    <td>${offcialAuto.engineMaxSpeed}</td>
                    <td>${offcialAuto.designAndCylinders}</td>

                    <td>${offcialAuto.electromotorMaxPower}</td>
                    <td>${offcialAuto.electromotorMaxTorque}</td>
                    <td>${offcialAuto.drivingRange}</td>
                    <td>${offcialAuto.chargingTime}</td>

                    <td>${offcialAuto.autoPrice}</td>
                    <td>${offcialAuto.putaway == 1?'在售':'停售'}</td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">修改</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">下架</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">删除</a>
                    </td>
                </tr>
            </c:forEach>

            <c:forEach items="${requestScope.offcialAutos_Cayenne}" var="offcialAuto" step="1">
                <tr>
                    <td>${offcialAuto.autoName}</td>
                    <td>${offcialAuto.autoModel}</td>
                    <td>${offcialAuto.energyType}</td>
                    <td>${offcialAuto.bodyDesign}</td>
                    <td>${offcialAuto.zeroToHundredTime}</td>
                    <td>${offcialAuto.topTrackSpeed}</td>

                    <td>${offcialAuto.engineMaxPower}</td>
                    <td>${offcialAuto.engineMaxTorque}</td>
                    <td>${offcialAuto.displacemenet}</td>
                    <td>${offcialAuto.engineMaxSpeed}</td>
                    <td>${offcialAuto.designAndCylinders}</td>

                    <td>${offcialAuto.electromotorMaxPower}</td>
                    <td>${offcialAuto.electromotorMaxTorque}</td>
                    <td>${offcialAuto.drivingRange}</td>
                    <td>${offcialAuto.chargingTime}</td>

                    <td>${offcialAuto.autoPrice}</td>
                    <td>${offcialAuto.putaway == 1?'在售':'停售'}</td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">修改</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">下架</a>
                    </td>
                    <td>
                        <a class="headerBoxElementA" href="error.jsp">删除</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>

        </table>
    </div>
    <br>
    <div>
        <a class="headerBoxElementA" href="${pageContext.request.contextPath}/gotoRegisterAuto">添加新车型</a>
    </div>


</div>

<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

