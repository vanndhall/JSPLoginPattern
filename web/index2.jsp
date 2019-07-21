<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="login" METHOD="post">

    <h1>Niepoprawne dane logowania!</h1>
    Login: <input name="login">
    <br>

    Hasło: <input name="haslo" type ="password">
    <br>

    <button name="subbmit">Zaloguj</button>


    <!--<a href="${pageContext.request.contextPath}/hello">Go to hello servlet</a> -->

</form>
</body>
</html>
