<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/HeaderAndFooter.css" type="text/css">
    <title>保时捷中国 - ElimWorks</title>
</head>
<body>
<header>
    <%@include file="portion/header.jsp"%>
</header>
<div class="Carousel">
    <div id="picture">
        <img src="asserts/img/indexIMG/s1.png" alt=""/>
        <img src="asserts/img/indexIMG/s2.png" alt=""/>
        <img src="asserts/img/indexIMG/s3.png" alt=""/>
        <img src="asserts/img/indexIMG/s1.png" alt=""/>
    </div>
    <span  class="arrow arrow_left"><</span>
    <span  class="arrow arrow_right">></span>
</div>
<h1 class="text_h1">所有车型</h1>
<div class="bodyBox">
    <div class="bodyBoxElement">
        <div class="bodyBoxElementNav">
            <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=1">
                <img src="asserts/img/indexIMG/body_718.png" />
            </a>
        </div>
        <div class="bodyBoxElementNav">
            <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=2">
                <img src="asserts/img/indexIMG/body_911.png" />
            </a>
        </div>
        <div class="bodyBoxElementNav">
            <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=3">
                <img src="asserts/img/indexIMG/body_taycan.png" />
            </a>
        </div>
    </div>
    <div class="bodyBoxElement" style="margin-top: -500px;">
        <div class="bodyBoxElementNav">
            <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=4">
                <img src="asserts/img/indexIMG/body_panamera.png" />
            </a>
        </div>
        <div class="bodyBoxElementNav">
            <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=5">
                <img src="asserts/img/indexIMG/body_macan.png" />
            </a>
        </div>
        <div class="bodyBoxElementNav">
            <a href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=6">
                <img src="asserts/img/indexIMG/body_cayenne.png" />
            </a>
        </div>
    </div>
</div>
<div class="toolsBox">
    <p>* Taycan 和 Taycan 4S 车型享受免征车辆购置税。所列的制造商建议零售价（含增值税）仅供参考，并不包括运输费用、税费（另有明确规定的除外）、牌照、所有权、非强制或地区性要求的设备。
        特别是，制造商建议零售价（含增值税）并未包含 2016 年 12 月 1 日起生效的《财政部、国家税务总局关于对超豪华小汽车加征消费税有关事项的通知》所要求加征的消费税。
        根据《关于深化增值税改革有关政策的公告》，自 2019 年 4 月 1 日起增值税税率进行调整。因此所列的厂商建议零售价将可能进行调整。请您与保时捷授权经销商咨询具体的价格信息。
    </p>
    <h1 class="text_h2">工具与服务</h1>
    <div class="toolsBoxElement">
        <div class="toolsBoxElementNav">
            <a href="error.jsp">
                <img class="toolsBoxElementImg_Type1" src="asserts/img/indexIMG/tools_1.png" />
            </a>
        </div>
        <div class="toolsBoxElementNav">
            <a href="error.jsp">
                <img class="toolsBoxElementImg_Type2" src="asserts/img/indexIMG/tools_2.png" />
            </a>
        </div>
        <div class="toolsBoxElementNav">
            <a href="error.jsp">
                <img class="toolsBoxElementImg_Type2" src="asserts/img/indexIMG/tools_3.png" />
            </a>
        </div>
        <div class="toolsBoxElementNav">
            <a href="error.jsp">
                <img class="toolsBoxElementImg_Type2" src="asserts/img/indexIMG/tools_4.png" />
            </a>
        </div>
    </div>
    <h1 class="text_h3">发现更多</h1>
    <div class="toolsBoxElement">
        <div class="toolsBoxElementNav">
            <a class="headerBoxElementA" href="error.jsp">
                <img class="toolsBoxElementImg_Type3" src="asserts/img/indexIMG/more_1.png" />
                <p>"共行·致远"，车主推荐计划</p>
            </a>
        </div>
        <div class="toolsBoxElementNav">
            <a class="headerBoxElementA" href="error.jsp">
                <img class="toolsBoxElementImg_Type3" src="asserts/img/indexIMG/more_2.png" />
                <p>车主推荐计划</p>
            </a>
        </div>
        <div class="toolsBoxElementNav">
            <a class="headerBoxElementA" href="error.jsp">
                <img class="toolsBoxElementImg_Type3" src="asserts/img/indexIMG/more_3.png" />
                <p>Porsche Exclusive Manufaktur</p>
            </a>
        </div>
        <div class="toolsBoxElementNav">
            <a class="headerBoxElementA" href="error.jsp">
                <img class="toolsBoxElementImg_Type3" src="asserts/img/indexIMG/more_4.png" />
                <p>保时捷电动理念</p>
            </a>
        </div>
    </div>
</div>

<footer class="footerBox">
    <%@include file="portion/footer.jsp"%>
</footer>
</body>
<script src="asserts/js/slideshow.js" type="text/javascript"></script>
</html>

