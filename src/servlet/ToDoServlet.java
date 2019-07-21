package servlet;

import model.Todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ToDoServlet",urlPatterns = {"/todos/add"})
public class ToDoServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Todo> todosList = (List<Todo>) request.getSession().getAttribute("todos");
		String todoText = request.getParameter("task");

		if(todosList == null){
			todosList = new ArrayList<>();
			Todo todo = new Todo(todoText, todosList.size());
			todosList.add(todo);
		}
		else{
			Todo todo = new Todo(todoText, todosList.size());
			todosList.add(todo);
		}
		request.getSession().setAttribute("todos", todosList);
		response.sendRedirect(request.getContextPath()+"todos.jsp");


	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}
}
