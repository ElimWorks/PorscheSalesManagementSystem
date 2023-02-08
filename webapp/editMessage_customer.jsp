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
    <form method="post" action="${pageContext.request.contextPath}/editCustomerMessage">
      <div>
        <input type="UserId" name="UserId" value="${sessionScope.loginUser.userId}" id="UserId" required readonly hidden>
      </div>
      <div>
        <label for="UserLastName">姓</label>
        <input type="text" name="UserLastName" value="${requestScope.editUser.userLastName}" id="UserLastName" required>
      </div>
      <div>
        <label for="UserFirstName">名</label>
        <input type="text" name="UserFirstName" value="${requestScope.editUser.userFirstName}" id="UserFirstName" required>
      </div>
      <div>
        <label>性别</label>
        <div>
          <label>
            <input type="radio" name="UserGender" value="1" ${requestScope.editUser.userGender == 'male'?'checked':''}>男
          </label>
        </div>
        <div>
          <label>
            <input type="radio" name="UserGender" value="2" ${requestScope.editUser.userGender == 'female'?'checked':''}>女
          </label>
        </div>
      </div>
      <div>
        <label for="UserPhone">手机号</label>
        <input type="tel" name="UserPhone" value="${requestScope.editUser.userPhone}" id="UserPhone" required>
      </div>
      <div>
        <label for="UserEmail">邮箱</label>
        <input type="email" name="UserEmail" value="${requestScope.editUser.userEmail}" id="UserEmail" required>
      </div>

      <button type="submit">提交修改</button>
    </form>
  </div>

  <div>
    <p>注:修改的信息会在下次登录后生效</p>
    <p>如下单请重新登录，确保信息的准确性</p>
    <p>如有未完成订单，请慎重修改个人信息</p>
  </div>
  <br>
  <br>
  <br>
  <div>
    <a class="headerBoxElementA" href="${pageContext.request.contextPath}/logoutMethod?userId=${sessionScope.loginUser.userId}" onclick="return logout();">注销账户</a>
    <p>注:此操作不可撤销!</p>
  </div>

</div>


<footer class="footerBox">
  <%@include file="portion/SimpleFooter.jsp"%>
</footer>

<script>
  function logout(){
    if (confirm("是否确定注销账户")){
      return true;
    }
    return false;
  }
</script>

</body>
</html>

