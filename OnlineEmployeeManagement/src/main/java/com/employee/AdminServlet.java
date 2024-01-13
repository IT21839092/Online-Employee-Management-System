package com.employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("adid");
		String password=request.getParameter("adpass");
		
		boolean isTrue;
		
		isTrue=EmployeeDBUtil.validateAdmin(username, password);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("admin.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
	}

}
