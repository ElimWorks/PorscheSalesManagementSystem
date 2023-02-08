<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>保时捷中国 - ElimWorks</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
    <link rel="stylesheet" href="asserts/css/HeaderAndFooter.css" type="text/css">
    <link rel="stylesheet" href="asserts/css/models.css" type="text/css">
</head>
<body class="modelsBody">
<header>
    <%@include file="portion/header.jsp"%>
</header>

<div class="modelsBodyTips">
    <p>车型列表</p>
</div>
<div class="modelsBox">

    <div class="modelsBoxLeft">
        <%--<div>
            <a class="headerBoxButtonA" href="${pageContext.request.contextPath}/getModelsMessages">所有</a>
        </div>--%>
    </div>
    <div class="modelsBoxRight">
        <div class="modelsBoxRightElement_heading">
            <div class="modelsBoxRightElement_heading_pBox">
                <p>Name</p>
            </div>
            <div class="modelsBoxRightElement_heading_pBox">
                <p>Pirce</p>
            </div>
        </div>
        <div class="modelsBoxRightElement_table">
            <c:forEach items="${requestScope.autoMessages}" var="autoMessage" step="1">

                <%--<c:if test="${autoMessage.autoModel=='718'}"><a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToDetials?autoId=${autoMessage.autoId}&autoModel=$${autoMessage.autoModel}"></c:if>
                <c:if test="${autoMessage.autoModel=='911'}"><a class="headerBoxElementA" href="${pageContext.request.contextPath}/details_911.jsp" ></c:if>
                <c:if test="${autoMessage.autoModel=='Taycan'}"><a class="headerBoxElementA" href="${pageContext.request.contextPath}/details_Taycan.jsp" ></c:if>
                <c:if test="${autoMessage.autoModel=='Panamera'}"><a class="headerBoxElementA" href="${pageContext.request.contextPath}/details_Panamera.jsp" ></c:if>
                <c:if test="${autoMessage.autoModel=='Macan'}"><a class="headerBoxElementA" href="${pageContext.request.contextPath}/details_Macan.jsp" ></c:if>
                <c:if test="${autoMessage.autoModel=='Cayenne'}"><a class="headerBoxElementA" href="${pageContext.request.contextPath}/details_Cayenne.jsp" ></c:if>
                --%>

                <a class="headerBoxElementA" href="${pageContext.request.contextPath}/goToDetials?autoId=${autoMessage.autoId}&autoModel=${autoMessage.autoModel}">
                    <div class="modelsBoxRightElement_eBox">
                        <div class="modelsBoxRightElement_table_pBox">
                            <p>${autoMessage.autoName}</p>
                        </div>
                        <div class="modelsBoxRightElement_table_pBox">
                            <p>￥${autoMessage.autoPrice} 起</p>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>

    </div>
</div>

<footer class="footerBox">
    <%@include file="portion/footer.jsp"%>
</footer>
</body>
</html>
