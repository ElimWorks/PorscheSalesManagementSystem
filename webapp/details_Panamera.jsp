<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>保时捷中国 - ElimWorks</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/HeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/autoDetails.css" type="text/css">
</head>
<body>
<header>
    <%@include file="/portion/header.jsp"%>
</header>

<div class="DetailsBox_Panamera">
    <br>
    <div>
        <table>
            <thead>
            <tr>
                <th>AutoName</th>
                <th>AutoModel</th>
                <th>EnergyType</th>
                <th>BodyDesign</th>
                <th>0-100km/h</th>
                <th>TopTrackSpeed</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${requestScope.detial.autoName}</td>
                <td>${requestScope.detial.autoModel}</td>
                <td>${requestScope.detial.energyType}</td>
                <td>${requestScope.detial.bodyDesign}</td>
                <td>${requestScope.detial.zeroToHundredTime}s</td>
                <td>${requestScope.detial.topTrackSpeed}km/h</td>
            </tr>
            </tbody>
            <c:if test="${requestScope.detial.energyType == '汽油(Gasoline)'}">
                <thead>
                <tr>
                    <th>EngineMaxPower</th>
                    <th>EngineMaxTorque</th>
                    <th>Displacemenet</th>
                    <th>EngineMaxSpeed</th>
                    <th>DesignAndCylinders</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${requestScope.detial.engineMaxPower}Ps</td>
                    <td>${requestScope.detial.engineMaxTorque}Nm</td>
                    <td>${requestScope.detial.displacemenet}cc</td>
                    <td>${requestScope.detial.engineMaxSpeed}rpm</td>
                    <td>${requestScope.detial.designAndCylinders}</td>
                </tr>
                </tbody>
            </c:if>
            <c:if test="${requestScope.detial.energyType != '汽油(Gasoline)'}">
                <thead>
                <tr>
                    <th>ElectromotorMaxPower</th>
                    <th>ElectromotorMaxTorque</th>
                    <th>DrivingRange</th>
                    <c:if test="${requestScope.detial.energyType == '电(Electro)'}">
                        <th>ChargingTime</th>
                    </c:if>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${requestScope.detial.electromotorMaxPower}Ps</td>
                    <td>${requestScope.detial.electromotorMaxTorque}Nm</td>
                    <td>${requestScope.detial.drivingRange}Km</td>
                    <c:if test="${requestScope.detial.energyType == '电(Electro)'}">
                        <td>${requestScope.detial.chargingTime}h</td>
                    </c:if>
                </tr>
                </tbody>
            </c:if>

        </table>
    </div>
    <br>

    <div>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_1.png">
        <h2>Panamera 理念</h2>
        <p>幻想能够符合逻辑吗？可以符合逻辑吗？也许不。我们坚信，最初的幻想越是天马行空，最后的结果往往也越令人惊艳。Panamera 就是这种值得为之奋斗的梦想。一台供四人乘坐的跑车？兼备出色的运动性和出众的舒适性？ 同时兼具典型的保时捷动力和更高的效率？许多人认为这不可能，还有人称之为勇气可嘉。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_2.png">
        <h2>设计</h2>
        <p>我们早就问过自己这样一个问题：运动型轿车是否一定要有轿车的外观？Panamera 的回答依然和前两次一样斩钉截铁：当然不。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_3.png">
        <h2>Panamera</h2>
        <p>无论是 Panamera还是 Panamera Sport Turismo，它的车身轮廓和比例总能让人一眼就认出这是一辆不折不扣的保时捷。流线型的动感身姿，轮廓分明的肌肉线条。 长轴距、短前悬和长后悬还在视觉上为车辆赋予了动感。富有雕塑感的侧面线条刻画出典型的保时捷腰线和轻盈的身姿</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_4.png">
        <h2>Panamera Sport Turismo</h2>
        <p>Panamera Sport Turismo 中，因为有了标配的 4+1 座椅设计，第五个人也可以一起享受 Panamera 的驾乘体验。第五个座椅虽然不是独立式全尺寸座椅，但额外搭载一名乘客进行中短途旅行不在话下。Panamera Sport Turismo 配备大尺寸尾门和更低的装载槛， 不仅可以轻松装载各类物品，也彰显了时尚设计与日常实用性可完美兼容这一事实。最重要的是，高达 1,384 升的行李厢容量对一款跑车而言可谓非同寻常。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_5.png">
        <h2>新一代轮胎</h2>
        <p>重新调校的底盘和新款 20 及 21 英寸车轮令驾驶体验得到极大提升。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_6.png">
        <h2>辅助系统</h2>
        <p>多项驾驶辅助系统让行车更加安全、更加放松。保时捷智慧互联为 Panamera 全系车型插上数字化的翅膀，可满足您现在和未来的需求。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Panamera_7.png">
        <h2>抬头显示</h2>
        <p>抬头显示系统可将本车相关的所有信息直接投射在您的视线中，而车道变换辅助系统可提醒您注意盲区中的物体。Panamera 标配包含交通标志识别功能的车道保持辅助系统，可在长途旅行过程中为您提供额外的支持。</p>

        <br>
    </div>
    <br>

    <div>
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/configuratorMethod?autoId=${requestScope.detial.autoId}">配置我的Porsche</a>
        <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=4">查看全部Panamera</a>
    </div>

</div>

<footer class="footerBox">
    <%@include file="/portion/footer.jsp"%>
</footer>
</body>
</html>
