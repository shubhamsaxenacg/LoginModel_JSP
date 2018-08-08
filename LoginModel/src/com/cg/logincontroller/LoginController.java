package com.cg.logincontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("*.app")
public class LoginController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		HttpSession session = request.getSession();
		System.out.println(action);
		switch (action) {
		case "/login.app":
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if (username.equals("admin") && password.equals("admin")) {
				session = request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("success.jsp");
			} else
				response.sendRedirect("error.jsp");
			break;
		case "/logout.app":
			session.invalidate();
			response.sendRedirect("login.jsp");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
