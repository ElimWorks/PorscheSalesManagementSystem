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

<div class="DetailsBox_Cayenne">
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
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_1.png">
        <h2>全新 Cayenne Turbo GT</h2>
        <p>带着出众的性能水平和精确的动态表现，又一位选手站上了 Cayenne 车型系列的起跑线。Cayenne Turbo GT 具备全程领先所需的全部要素。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_2.png">
        <h2>跑车典范</h2>
        <p>Cayenne 和 Cayenne Coupé：双双具备醒目的外观和出众的性能，而且支持 5 座布局。也许您期待与好友同乘 Cayenne 开启下一段探险之旅，也许您被 Coupé 的标志性线条所吸引，都没问题——这纯属您的个人品味。但是，这两款尺寸最大的保时捷车型遵循同一个原则：一辆保时捷首先必须是一辆跑车。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_3.png">
        <h2>E-Hybrid</h2>
        <p>可持续发展和驾驶动态的结合令跑车爱好者会心一笑。因为他们可以信赖源自赛道的混合动力技术——还有全家共享的宽敞空间。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_4.png">
        <h2>S</h2>
        <p>无论赛道还是公路、休闲旅游或日常驾驶：只要手握保时捷 Cayenne S 的方向盘，无所不能的魅力和跑车级驾驶乐趣就是绝对的主角。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_5.png">
        <h2>Turbo</h2>
        <p>搭载保时捷旗下功率最强大的 8 缸发动机，让您肾上腺素飙升的同时输出源源不断的驾驶乐趣。出众的跑车感受正是 Cayenne Turbo 身上最精彩的部分。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_6.png">
        <h2>Turbo GT</h2>
        <p>Cayenne Turbo GT 深谙过弯和冲刺的乐趣。而且，它操控纵向和横向动态性能的水平可谓登峰造极。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_7.png">
        <h2>E-Hybrid 车型</h2>
        <p>Cayenne E-Hybrid 车型表明：我们将电动汽车称为“E 驱高效动力”，因为可持续发展和驾驶动态的结合足以令跑车爱好者会心一笑。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_8.png">
        <h2>独有电力驱动模式</h2>
        <p>我们的 E-Hybrid 车型可通过模式开关和 PCM 选择专为该车型设计的驾驶模式。在任何时候，您都可以充分释放 Cayenne 或 Cayenne Coupé 的潜力。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Cayenne_9.png">
        <h2>充电</h2>
        <p>我们让创新出行更进一步——突破车辆本身的局限。优化集成的车辆充电口、实用的充电设备和智能充电选项，无论在家里还是路上均可使用。</p>


        <br>
    </div>
    <br>

    <div>
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/configuratorMethod?autoId=${requestScope.detial.autoId}">配置我的Porsche</a>
        <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=6">查看全部Cayenne</a>
    </div>

</div>

<footer class="footerBox">
    <%@include file="/portion/footer.jsp"%>
</footer>
</body>
</html>
