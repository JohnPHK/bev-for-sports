package com.app.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.dao.ApplicationDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Forwarding request to /html/login.jsp
		RequestDispatcher dispatcher = req.getRequestDispatcher("/html/login.jsp");
		dispatcher.include(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// get the username from the login form
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		// call DAO for validation logic
		ApplicationDao dao = new ApplicationDao();

		boolean isValidUser = dao.validateUser(username, password);

		if (isValidUser) {
			// set up the HTTP session
			HttpSession session = req.getSession();

			// set the username as an attribute
			session.setAttribute("username", username);

			// forward to home jsp
			req.getRequestDispatcher("/html/home.jsp").forward(req, resp);
		} else {
			String errorMessage = "Invalid Credentials, please login again!";
			req.setAttribute("error", errorMessage);
			req.getRequestDispatcher("html/login.jsp").forward(req, resp);
		}

	}
}
