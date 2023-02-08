<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="headerBox">
    <div class="headerBoxLogo">
        <a href="${pageContext.request.contextPath}/index.jsp">
            <img class="imgLogo" src="asserts/img/indexIMG/logo.png"/>
        </a>
    </div>
    <div class="headerBoxElement">
        <div class="headerBoxElementNav">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=1">
                <img src="asserts/img/indexIMG/718.jpg" />
                <p>718</p>
            </a>
        </div>
        <div class="headerBoxElementNav">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=2">
                <img src="asserts/img/indexIMG/911.jpg" />
                <p>911</p>
            </a>
        </div>
        <div class="headerBoxElementNav">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=3">
                <img src="asserts/img/indexIMG/taycan.jpg" />
                <p>Taycan</p>
            </a>
        </div>
        <div class="headerBoxElementNav">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=4">
                <img src="asserts/img/indexIMG/panamera.jpg" />
                <p>Panamera</p>
            </a>
        </div>
        <div class="headerBoxElementNav">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=5">
                <img src="asserts/img/indexIMG/macan.jpg" />
                <p>Macan</p>
            </a>
        </div>
        <div class="headerBoxElementNav">
            <a class="headerBoxElementA" href="${pageContext.request.contextPath}/getModelsAllById?autoModelId=6">
                <img src="asserts/img/indexIMG/cayenne.jpg" />
                <p>Cayenne</p>
            </a>
        </div>
    </div>
    <div class="headerBoxButton">
        <div class="headerBoxButtonNav">
            <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/getModelsMessages">
                <p>选购</p>
            </a>
        </div>
        <div class="headerBoxButtonNav">
            <a class="headerBoxButtonA" href="error.jsp">
                <p>查找经销商</p>
            </a>
        </div>
        <div class="headerBoxButtonNav">
            <c:if test="${sessionScope.loginUser == null}">
                <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/login.jsp">
                    <p>My Porsche</p>
                </a>
            </c:if>
            <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.userStatus == 'Customer'}">
                <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/goToPersonalCustomer?userId=${sessionScope.loginUser.userId}">
                    <p>${sessionScope.loginUser.userLastName}${sessionScope.loginUser.userGender == 'male'?'先生':'女士'}</p>
                </a>
            </c:if>
            <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.userStatus == 'Agency'}">
                <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/personal_agency.jsp">
                    <p>经销商:${sessionScope.agency.agencyName}</p>
                </a>
            </c:if>
            <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.userStatus == 'Administrator'}">
                <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/personal_administrator.jsp">
                    <p>管理员:${sessionScope.loginUser.userLastName}${sessionScope.loginUser.userGender == 'male'?'先生':'女士'}</p>
                </a>
            </c:if>
        </div>
    </div>
</div>