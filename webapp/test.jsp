<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>地址选择</title>
    <link rel="stylesheet" href="asserts/css/style.css">
</head>
<body>
<div>
    <fieldset>
        <form action="#">
            <label for="addr-show">您选择的是：
                <input type="text" value="" id="addr-show">
            </label>
            <br/>

            <!--省份选择-->
            <select id="prov" onchange="showCity(this)">
                <option>=请选择省份=</option>

            </select>

            <!--城市选择-->
            <select id="city" onchange="showCountry(this)">
                <option>=请选择城市=</option>
            </select>

            <!--县区选择-->
            <select id="country" onchange="selecCountry(this)">
                <option>=请选择县区=</option>
            </select>
            <button type="button" class="btn met1" onClick="showAddr()" id="button-show" >确定</button>
        </form>
    </fieldset>
</div>

<script src="asserts/js/city.js"></script>
<script src="asserts/js/method.js"></script>

</body>
</html>