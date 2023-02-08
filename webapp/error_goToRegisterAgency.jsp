<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>保时捷中国 - ElimWorks</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="asserts/css/index.css" type="text/css"/>
  <link rel="stylesheet" href="asserts/css/SimpleHeaderAndFooter.css" type="text/css">
  <link rel="stylesheet" href="asserts/css/error.css" type="text/css">
</head>
<body>
<header>
  <%@include file="portion/SimpleHeader.jsp"%>
</header>

<div>
  <p class="errorBoxP">还有未完成的订单</p>
  <p class="errorBoxP">无法申请成为经销商！</p>
  <a href="index.jsp">返回主页</a>
</div>

<footer class="footerBox">
  <%@include file="portion/SimpleFooter.jsp"%>
</footer>
</body>
</html>
