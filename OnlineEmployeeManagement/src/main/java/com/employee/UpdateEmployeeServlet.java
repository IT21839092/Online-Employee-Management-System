package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		String name=request.getParameter("empname");
		String phone=request.getParameter("empnumber");
		String email=request.getParameter("empEmail");
		String qualification=request.getParameter("empQualifications");
		String user=request.getParameter("empUname");
		String password=request.getParameter("emppass");
		
		boolean isTrue;
		
		isTrue=EmployeeDBUtil.updateEmployee(id, name, phone, email, qualification, user, password);
		
		if(isTrue==true) {
			
			List<Employee> empDetails=EmployeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("profile.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Employee> empDetails=EmployeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("updateEmployee.jsp");
			dis.forward(request, response);
		}
	}

}
