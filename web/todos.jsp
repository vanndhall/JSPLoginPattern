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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.jsp"%>
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


<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Todo</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${sessionScope.todos != null}">

        <c:forEach var="t" items="${sessionScope.todos}">
            <tr>
                <th scope="row">1</th>
                <td><c:out value="${t.name}"></c:out></td>
                <td><button class="btn btn-info">Edit</button></td>
                <td><button class="btn btn-danger">Delete</button></td>
            </tr>
            </br>
        </c:forEach>
    </c:if>
    </tbody>
</table>











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
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
