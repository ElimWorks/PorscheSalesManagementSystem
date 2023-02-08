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

<div class="DetailsBox_911">
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
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_1.png">
        <h2>永恒的设计</h2>
        <p>永恒设计的现代诠释。911 极具辨识度的车身轮廓以标志性的飞线为突出特点。自 1963 年以来，这项设计几乎未曾改变，它是塑造所有保时捷车型的基因。当然也包括 911 Cabriolet 和 Targa 车型。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_2.png">
        <h2>跑车性能</h2>
        <p>采用后置设计、动力强劲的 双涡轮增压水平对置 6 缸发动机</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_3.png">
        <p>高精度 Porsche Doppelkupplung (PDK) 保时捷双离合器变速箱</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_4.png">
        <p>可提升驾驶动态性能的诸多系统</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_5.png">
        <h2>舒适性</h2>
        <p>动力强劲。设计标杆。日常座驾。911 集跑车动力与出色的内饰舒适性和前沿技术于一身，让您的日常驾驶更加轻松便利</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_6.png">
        <h2>辅助系统</h2>
        <p>远程停车辅助系统等多项辅助系统为驾驶和日常生活提供支持。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_7.png">
        <h2>内饰舒适性</h2>
        <p>高分辨率显示屏、结构清晰的显示功能和触摸感应按钮。简而言之：跑车人体工程学与 21 世纪科技融于一体。由于采用直观的保时捷先进驾驶舱控制理念，车辆内饰比以往更简单明了、更富动感。</p>
        <img class="DetailsImg" src="asserts/img/configuratorIMG/911_8.png">
        <h2>数字联网</h2>
        <p>借助保时捷智慧互联，您可以利用实时交通信息、在线语音识别和流媒体音乐播放等额外的应用程序和服务来扩展现有的车辆功能。911 让丰富的数字联网选项触手可及。</p>


        <br>
    </div>
    <br>

    <div>
        <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/configuratorMethod?autoId=${requestScope.detial.autoId}">配置我的Porsche</a>
        <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=2">查看全部911</a>
    </div>

</div>

<footer class="footerBox">
    <%@include file="/portion/footer.jsp"%>
</footer>
</body>
</html>
