<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>保时捷中国 - ElimWorks</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/HeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/configurator.css" type="text/css">
</head>
<body>
<header>
    <%@include file="portion/header.jsp"%>
</header>

<div class="ConfiguratorBox">
    <br>
    <div>
        <c:if test="${requestScope.detial_conf.autoModel == '718'}">
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_1.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_2.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_3.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_4.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_5.png">
            </div>
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_6.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_7.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_8.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_9.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/718_10.png">
            </div>
        </c:if>
        <c:if test="${requestScope.detial_conf.autoModel == '911'}">
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_1.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_2.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_3.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_4.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_5.png">

            </div>
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_6.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_7.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_8.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_9.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/911_10.png">
            </div>
        </c:if>
        <c:if test="${requestScope.detial_conf.autoModel == 'Taycan'}">
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_1.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_2.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_3.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_4.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_5.png">

            </div>
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_6.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_7.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_8.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_9.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Taycan_10.png">
            </div>
        </c:if>
        <c:if test="${requestScope.detial_conf.autoModel == 'Panamera'}">
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_1.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_2.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_3.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_4.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_5.png">
            </div>
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_6.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_7.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_8.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_9.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Panamera_10.png">
            </div>
        </c:if>
        <c:if test="${requestScope.detial_conf.autoModel == 'Macan'}">
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_1.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_2.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_3.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_4.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_5.png">
            </div>
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_6.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_7.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_8.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_9.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Macan_10.png">
            </div>
        </c:if>
        <c:if test="${requestScope.detial_conf.autoModel == 'Cayenne'}">
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_1.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_2.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_3.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_4.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_5.png">
            </div>
            <div>
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_6.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_7.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_8.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_9.png">
                <img class="ConfiguratorElementImg" src="asserts/img/configuratorIMG/Cayenne_10.png">
            </div>
        </c:if>


    </div>

    <form method="post" action="${pageContext.request.contextPath}/orderMethod">
        <div>
            <label>车型</label>
            <input readonly value="${requestScope.detial_conf.autoName}">
            <input name="autoId" readonly value="${requestScope.detial_conf.autoId}" type="hidden">
            <input name="userId" readonly value="${sessionScope.loginUser.userId}" type="hidden">
        </div>
        <div>
            <label>车身</label>
            <label>
                <select id="ColorType" onchange="colorChange()">
                    <option>请选择车漆材质</option>
                    <c:forEach items="${requestScope.colorTypes}" var="colorType" step="1">
                        <option value="${colorType.colorType}">${colorType.colorType}</option>
                    </c:forEach>
                </select>
            </label>
            <label>
                <select id="Color" name="colorId" required>
                </select>
            </label>
        </div>

        <div>
            <label>车轮</label>
            <label>
                <select id="Wheel" name="wheelId" required>
                    <c:forEach items="${requestScope.wheels}" var="wheel" step="1">
                        <option value="${wheel.wheelId}">${wheel.wheelName} - ${wheel.wheelSize}寸 - ￥${wheel.wheelPrice}</option>
                    </c:forEach>
                </select>
            </label>
        </div>

        <div>
            <label>内饰</label>
            <label>
                <select id="Trim" name="trimId" required>
                    <c:forEach items="${requestScope.trims}" var="trim" step="1">
                        <option value="${trim.trimId}">${trim.trimName} - ￥${trim.trimPrice}</option>
                    </c:forEach>
                </select>
            </label>
        </div>

        <div>
            <label>经销商</label>
            <label>
                <select id="Agency" name="agencyId" required>
                    <c:forEach items="${requestScope.agencies}" var="agency" step="1">
                        <option value="${agency.agencyId}">${agency.agencyName} - ${agency.agencyProvince} ${agency.agencyCity}</option>
                    </c:forEach>
                </select>
            </label>
        </div>

        <button type="submit">确认订单</button>
    </form>
</div>

<footer class="footerBox">
    <%@include file="portion/footer.jsp"%>
</footer>

<script>
    function colorChange(){
        var x = document.getElementById("ColorType");
        var y = document.getElementById("Color");
        y.options.length = 0;

        if(x.selectedIndex == 1)
        {
            <c:forEach items="${requestScope.colors}" var="color" step="1">
            <c:if test="${color.colorType == '标准'}">
            y.options.add(new Option("${color.colorName} - ￥${color.colorPrice}","${color.colorId}"))
            </c:if>
            </c:forEach>
        }

        if(x.selectedIndex == 2)
        {
            <c:forEach items="${requestScope.colors}" var="color" step="1">
            <c:if test="${color.colorType == '金属漆'}">
            y.options.add(new Option("${color.colorName} - ￥${color.colorPrice}","${color.colorId}"))
            </c:if>
            </c:forEach>
        }

        if(x.selectedIndex == 3)
        {
            <c:forEach items="${requestScope.colors}" var="color" step="1">
            <c:if test="${color.colorType == '特殊'}">
            y.options.add(new Option("${color.colorName} - ￥${color.colorPrice}","${color.colorId}"))
            </c:if>
            </c:forEach>
        }

    }

</script>

</body>
</html>
