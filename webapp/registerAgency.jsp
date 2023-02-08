<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/LoginAndRegister.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
    <title>保时捷中国 - ElimWorks</title>
</head>
<body>
<header>
    <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div class="registerBox">
    <br>
    <div>
        <form method="post" action="${pageContext.request.contextPath}/registerAgencyMethod">
            <input name="AgencyUserId" readonly value="${sessionScope.loginUser.userId}" type="hidden">
            <div>
                <label for="AgencyName">名称</label>
                <input type="text" name="AgencyName" id="AgencyName" required>
            </div>
            <div>
                <label for="AgencyProvince">省份</label>
                <label>
                    <select id="AgencyProvince" name="AgencyProvince" onchange="CountryChange()" required>
                        <option>请选择省份</option>
                        <c:forEach items="${requestScope.provinces}" var="province" step="1">
                            <option value="${province.provinceName}">${province.provinceName}</option>
                        </c:forEach>
                    </select>
                </label>
            </div>
            <div>
                <label for="AgencyCity">城市</label>
                <label>
                    <select id="AgencyCity" name="AgencyCity" required>
                    </select>
                </label>
            </div>
            <div>
                <label for="AgencyCapital">启动资金</label>
                <input type="text" name="AgencyCapital" id="AgencyCapital" required>
            </div>


            <button type="submit">提交申请</button>
        </form>
    </div>
    <p>注: 一位代理人只能申请一个经销商！</p>
    <p>    经销商申请期间无法进行订单操作！</p>
    <p>    成为经销商后，本账号中的个人历史订单将无法查看！</p>
</div>





<footer class="footerBox">
    <%@include file="portion/SimpleFooter.jsp"%>
</footer>

<script>
    function CountryChange(){
        var x = document.getElementById("AgencyProvince");
        var y = document.getElementById("AgencyCity");
        y.options.length = 0;

        if (x.selectedIndex == 1){
            y.options.add(new Option("111","222"))
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '1'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 2){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '2'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

       if (x.selectedIndex == 3){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '3'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 4){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '4'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 5){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '5'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 6){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '6'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 7){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '7'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 8){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '8'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 9){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '9'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 10){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '10'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 11){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '11'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 12){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '12'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 13){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '13'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 14){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '14'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 15){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '15'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 16){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '16'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 17){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '17'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 18){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '18'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 19){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '19'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 20){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '20'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 21){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '21'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 22){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '22'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 23){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '23'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 24){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '24'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 25){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '25'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 26){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '26'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 27){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '27'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 28){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '28'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 29){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '29'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 30){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '30'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 31){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '31'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }

        if (x.selectedIndex == 32){
            <c:forEach items="${requestScope.provinces}" var="province" step="1">
            <c:if test="${province.provinceId == '32'}">
            <c:forEach items="${requestScope.cities}" var="city" step="1">
            <c:if test="${city.cityPertain == province.provinceName}">
            y.options.add(new Option("${city.cityName}","${city.cityName}"))
            </c:if>
            </c:forEach>
            </c:if>
            </c:forEach>
        }



    }
</script>

</body>
</html>

