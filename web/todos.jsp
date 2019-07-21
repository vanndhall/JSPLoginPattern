<%@ page import="model.Todo" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<br>
<form action="logout">
<button name="logoffbutton">Wyloguj</button>
Hello ${sessionScope.user.login} język wyrażeniowy
Your todos
</form>
<form action="todos/add" METHOD="post">
    Zadanie: <input name="task">
    <br>
    <input type="submit" name="addtask">Dodaj zadanie</input>
</form>
<c:if test="${sessionScope.todos != null}">

    <c:forEach var="t" items="${sessionScope.todos}">

        <c:out value="${t.name}"></c:out>
    </br>
    </c:forEach>
</c:if>






<!--<br>
    <%
     List<Todo> taskList = (List<Todo>) session.getAttribute("todos");

     if( taskList != null){
  	for(Todo t: taskList){
    %>

<%= t.getName()  %>
    <br/>
<%
    }
  }
%>

-->

</body>
</html>
