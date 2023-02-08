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

<div class="DetailsBox_Macan">
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
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_1.png">
        <h2>新款 Macan T</h2>
        <p>泯然众人，还是不同凡响？ 年轻、动感、都市，拥有丰富的标准配置、专属的车型设计，当然，还有典型的保时捷性能。 这就是新款 Macan T。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_2.png">
        <h2>拥有跑车特性的 SUV</h2>
        <p>五门、五座、无与伦比，富有辨识度，又势不可挡。 新一代 Macan 依然是一款拥有紧凑型 SUV 外观的跑车。倾斜的车顶线条让人一眼便能认出保时捷基因：经典“飞线”为 Macan 赋予了典型的跑车轮廓。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_3.png">
        <h2>全新设计扰流板的前裙板</h2>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_4.png">
        <h2>全新设计的Macan 标志性侧翼板</h2>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_5.png">
        <h2>重新设计的带有黑色扩散板的尾部</h2>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_6.png">
        <h2>驾驶舱洋溢着保时捷独有的先进控制理念</h2>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_7.png">
        <h2>新一代方向盘：改进后的方向盘选项不但可提供完美的控制和触感，还能让驾驶员通过换档拨片来手动换档。</h2>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_8.png">
        <h2>依旧提供纯正跑车性能的新款发动机</h2>
        <p>不同的发动机，一致的原则：2.0 升涡轮增压直列式四缸发动机和 2.9 升双涡轮增压 V6 发动机均可高效提供出色的动力和扭矩。自动模式下，7 速 Porsche Doppelkupplung (PDK) 保时捷双离合传动系统可瞬间切换最合适的档位；而当您想要自己掌控节奏时，也能提供令您满意的精准手动换档.</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/Macan_9.png">
        <h2>带主动泊车功能的停车辅助系统</h2>
        <p>带主动停车功能的停车辅助系统可搜索并识别合适的停车位，只需按下按钮，系统即可接管车辆，完成停车入位或驶离车位操作。</p>

        <br>
    </div>
    <br>


    <div>
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/configuratorMethod?autoId=${requestScope.detial.autoId}">配置我的Porsche</a>
        <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=5">查看全部Macan</a>
    </div>

</div>

<footer class="footerBox">
    <%@include file="/portion/footer.jsp"%>
</footer>
</body>
</html>
