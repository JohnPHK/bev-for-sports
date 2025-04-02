package com.app.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.beans.Order;
import com.app.dao.ApplicationDao;

@WebServlet("/orderHistory")
public class OrderHistory {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get username from session
		String username = (String) request.getSession().getAttribute("username");

		// call dao and get order history
		ApplicationDao dao = new ApplicationDao();
		List<Order> orders = dao.getOrders(username);

		// set order data in request
		request.setAttribute("orders", orders);

		// forward to home jsp
		request.getRequestDispatcher("/html/home.jsp").forward(request, response);

	}
}
