package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CookieServlet",urlPatterns = {"/cookie"})
public class CookieServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Ciasteczko______________
		Cookie cookie = new Cookie("ciastko","karmel");
		cookie.setMaxAge(10*360*360);//ile ma trwac ciastko u uzytkownika w sekundach
		response.addCookie(cookie);
		//Ciasteczko koniec ______________________

		request.getRequestDispatcher(request.getContextPath()+ "/todos.jsp").forward(request,response);
	}
}
