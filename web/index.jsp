<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    <!--<a href="${pageContext.request.contextPath}/hello">Go to hello servlet</a> -->
    <%
    if(session.getAttribute("user") != null){
    response.sendRedirect("todos.jsp");

    }%> <!--skryplet - miejsce gdzie mozna umiescic kod java -->
    <div class="container login-container">
      <div class="row">
        <div class="col-md-6 login-form-1">
  <form action="login" method="post">
    <div class="form-group">
      <input type="login" name="login" class="form-control" placeholder="Your Email *" value="" />
    </div>
    <div class="form-group">
      <input type="password" name="haslo" class="form-control" placeholder="Your Password *" value="" />
    </div>
    <div class="form-group">
      <input type="submit" class="btnSubmit" value="Login" />
    </div>
    <div class="form-group">
      <a href="#" class="ForgetPwd">Forget Password?</a>
    </div>
  </form>
        </div>
      </div>
    </div>

  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>