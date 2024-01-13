package com.salary;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteSalaryServlet")
public class deleteSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		
		boolean isTrue;
		
		isTrue=SalaryDBUtil.deleteSalary(id);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("salary.jsp");
			dis.forward(request, response);
		}
		else {
			List<Salary> salDetails=SalaryDBUtil.getSalaryDetails(id);
			request.setAttribute("salDetails", salDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("deleteSalary.jsp");
			dis.forward(request, response);
		}
	}

}
