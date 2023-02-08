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

<div class="DetailsBox_Taycan">
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
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_1.png">
        <h2>全新 Taycan GTS</h2>
        <p>全新 Taycan GTS 为保时捷电动驾驶体验带来更强烈的激情。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_2.png">
        <h2>Taycan</h2>
        <p>纯粹、激情、经典。这三大属性是每一款保时捷跑车的标志性特点，并在 Taycan 上尤为突出——它将我们的品牌基因带进了全新的汽车时代。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_3.png">
        <h2>Taycan 4 Cross Turismo</h2>
        <p>起源：不折不扣的保时捷。设计语言：未来的宣言。Taycan Cross Turismo 具有强烈而独特的风格。特别的 Cross Turismo 设计赋予了它骄人的外观，甚而彰显出泰然自若的独特气度。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_4.png">
        <h2>续航里程</h2>
        <p>对 Taycan 而言，即使是遥远的终点也宛如近在咫尺。高性能蓄电池升级版可为 Taycan 提供高达 527 km¹的 CLTC 续航里程，因而可减少停留和充电需求，让您能够轻松完成长途跋涉。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_5.png">
        <h2>800 V 架构</h2>
        <p>性能是保时捷的灵魂 — 各个方面皆是如此。正如 Taycan 所展示的，即使在充电时：在理想条件下，其 800 V 架构可支持高达 200 kW的充电功率，可在 30 分钟内将电量从 5% 充至 80%。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_6.png">
        <h2>驱动理念</h2>
        <p>不论从技术角度还是从主观感受而言，驱动电机的相互作用都可以产生惊人的性能数据：借助起步控制系统可输出高达 560 kW (761 PS) 的超增压功率，两台电机在 2.8 秒内即可令 Taycan Turbo S 从静止加速到 100 km/h。由此带来的是与 918 Spyder 等超级跑车不相上下的起步性能。而且这种性能可以反复爆发出来：可实现连续加速，最高车速可达 260 km/h。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_7.png">
        <h2>动感飞线</h2>
        <p>我们能够迅速感知哪些事物有益于灵魂、哪些能鼓舞灵魂。流畅而犀利的车身轮廓和动感十足的飞线让 Taycan 在瞬息之间尽显自身魅力。车身尾部采用无缝设计条形尾灯，带有玻璃立体字样的“PORSCHE”标志。就这些？当然没有。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Taycan_8.png">
        <h2>保时捷先进驾驶舱</h2>
        <p>震撼人心的经历令人永生铭记。Taycan 的内饰同样令人印象深刻。GT 多功能运动型方向盘¹和下沉式的运动型座椅，令人出发之前便对旅程充满期待。配备创新的曲面显示屏的保时捷先进驾驶舱还注重舒适性，专为经久不衰、风驰电掣的电动驾驶体验而量身打造。</p>

        <br>
    </div>
    <br>

    <div>
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/configuratorMethod?autoId=${requestScope.detial.autoId}">配置我的Porsche</a>
        <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=3">查看全部Taycan</a>
    </div>

</div>

<footer class="footerBox">
    <%@include file="/portion/footer.jsp"%>
</footer>
</body>
</html>
