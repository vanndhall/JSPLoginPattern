<%--
  Created by IntelliJ IDEA.
  User: Szymon Mantey
  Date: 21.07.2019
  Time: 09:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="logout">
<button name="logoffbutton">Wyloguj</button>
Hello ${sessionScope.user.login} język wyrażeniowy
Your todos
</form>
<form action="todos/add" METHOD="post">
    Zadanie: <input name="task">
    <br>
    <button name="addtask">Dodaj zadanie</button>
</form>

</body>
</html>
