package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String haslo = request.getParameter("haslo");

		if(login.equals("admin") && haslo.equals("admin")){
			response.sendRedirect("todos.jsp"); // przekierowuje do kolejnego widoku
		}
		else{

			response.sendRedirect("index2.jsp"); // w innym przypadku przekieruj do index2 - niepoprawne dane
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
