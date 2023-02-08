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
  <h4>Basic</h4>
  <div>
    <form method="post" action="${pageContext.request.contextPath}/registerAuto">
      <div>
        <label for="AutoName">AutoName</label>
        <input type="text" name="AutoName" id="AutoName" required>
      </div>
      <div>
        <label for="AutoModel">AutoModel</label>
        <label>
          <select id="AutoModel" name="AutoModel" required>
            <c:forEach items="${requestScope.auto_modelTypes}" var="auto_modelType" step="1">
              <option value="${auto_modelType.modelsId}">${auto_modelType.modelsName}</option>
            </c:forEach>
          </select>
        </label>
      </div>
      <div>
        <label for="EnergyType">EnergyType</label>
        <label>
          <select id="EnergyType" name="EnergyType" required>
            <c:forEach items="${requestScope.auto_energyTypes}" var="auto_energyType" step="1">
              <option value="${auto_energyType.energyTypesId}">${auto_energyType.energyTypesName}</option>
            </c:forEach>
          </select>
        </label>
      </div>
      <div>
        <label for="BodyDesign">BodyDesign</label>
        <label>
          <select id="BodyDesign" name="BodyDesign" required>
            <c:forEach items="${requestScope.auto_bodyDesignTypes}" var="auto_bodyDesignType" step="1">
              <option value="${auto_bodyDesignType.bodyDesignId}">${auto_bodyDesignType.bodyDesignName}</option>
            </c:forEach>
          </select>
        </label>
      </div>
      <div>
        <label for="ZeroToHundredTime">0-100km/h</label>
        <input type="number" name="ZeroToHundredTime" id="ZeroToHundredTime" required>
      </div>
      <div>
        <label for="TopTrackSpeed">TopTrackSpeed</label>
        <input type="number" name="TopTrackSpeed" id="TopTrackSpeed" required>
      </div>
      <br>

      <h4>Engine</h4>
      <div>
        <label for="EngineMaxPower">EngineMaxPower</label>
        <input type="number" name="EngineMaxPower" id="EngineMaxPower">
      </div>
      <div>
        <label for="EngineMaxTorque">EngineMaxTorque</label>
        <input type="number" name="EngineMaxTorque" id="EngineMaxTorque">
      </div>
      <div>
        <label for="Displacemenet">Displacemenet</label>
        <input type="number" name="Displacemenet" id="Displacemenet">
      </div>
      <div>
        <label for="EngineMaxSpeed">EngineMaxSpeed</label>
        <input type="number" name="EngineMaxSpeed" id="EngineMaxSpeed">
      </div>
      <div>
        <label for="DesignAndCylinders">DesignAndCylinders</label>
        <input type="text" name="DesignAndCylinders" id="DesignAndCylinders">
      </div>
      <br>

      <h4>Electromotor</h4>
      <div>
        <label for="ElectromotorMaxPower">ElectromotorMaxPower</label>
        <input type="number" name="ElectromotorMaxPower" id="ElectromotorMaxPower">
      </div>
      <div>
        <label for="ElectromotorMaxTorque">ElectromotorMaxTorque</label>
        <input type="number" name="ElectromotorMaxTorque" id="ElectromotorMaxTorque">
      </div>
      <div>
        <label for="DrivingRange">DrivingRange</label>
        <input type="number" name="DrivingRange" id="DrivingRange">
      </div>
      <div>
        <label for="ChargingTime">ChargingTime</label>
        <input type="number" name="ChargingTime" id="ChargingTime">
      </div>
      <br>

      <h4>Extra</h4>
      <div>
        <label for="AutoPrice">AutoPrice</label>
        <input type="number" name="AutoPrice" id="AutoPrice" required>
      </div>

      <button type="submit">提交车型</button>
    </form>

  </div>

</div>


<footer class="footerBox">
  <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>

