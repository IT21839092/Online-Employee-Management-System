package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteEmployeeServlet")
public class deleteEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		boolean isTrue;
		
		isTrue=EmployeeDBUtil.deleteEmployee(id);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
		else {
			List<Employee> empDetails=EmployeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("deleteEmployee.jsp");
			dis.forward(request, response);
		}
	}

}
