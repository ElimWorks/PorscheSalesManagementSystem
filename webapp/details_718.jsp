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

<div class="DetailsBox_718">
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
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_1.png">
        <h2>718设计理念</h2>
        <p>718 车型，以运动之名。作为中置发动机跑 车，它们秉承富有传奇色彩的保时捷 718 赛车 的运动精神，融合未来跑车理念，呈现当今公 路驾乘体验。目标只有一个：打破日常世界的 乏味无聊。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_2.png">
        <h2>设计</h2>
        <p>精准而不花哨；自信而不拘谨。整体外形低矮、宽大、流畅。718 车型的外观设计以富有运动感的线条和个性分明的外形轮廓为特点。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_2.png">
        <h2>性能</h2>
        <p>718 车型有何与众不同之处？优异的性能、操控、设计以及双行李厢带来的宽敞空间。最重要的是，中置发动机布局让这一切成为可能。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_3.png">
        <h2>舒适性</h2>
        <p>自适应减震器可提升日常驾驶的舒适性。此外，车辆还拥有多处储物空间和宽敞的腿部空间，双行李厢能够储存更多物品。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_4.png">
        <h2>718 T</h2>
        <p>有时，漫无目的才是更好的选择。怎样去到那里？我们去芜存菁：一辆纯粹的跑车，让您忘掉手机、只想升档提速。这辆保时捷只需要一条明确的路——当然，还有您。游刃自如。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_5.png">
        <h2>718 GTS</h2>
        <p>彻底震撼感官，同时拨动您的心弦的跑车。纯粹的保时捷跑车，四个气缸，一位车手：那就是您。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/718_6.png">
        <h2>Boxster 25 周年</h2>
        <p>Boxster 的历史绵亘二十五载，涌现了四代车型。这些车型集富有辨识度的线条与中置发动机跑车的比例于一身。Boxster 25 周年版的诸多细节将过去拉回到现在，其设计灵感源自开启 Boxster 时代的 1993 年概念车。</p>
        <br>
    </div>
    <br>
    <div>
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/configuratorMethod?autoId=${requestScope.detial.autoId}">配置我的Porsche</a>
        <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=1">查看全部718</a>
    </div>

</div>

<footer class="footerBox">
    <%@include file="/portion/footer.jsp"%>
</footer>
</body>
</html>
