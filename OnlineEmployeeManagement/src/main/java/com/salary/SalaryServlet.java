package com.salary;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SalaryServlet")
public class SalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String basicSalary=request.getParameter("bsal");
		String etf=request.getParameter("etf");
		String epf=request.getParameter("epf");
		String otBonus=request.getParameter("ot");
		String special=request.getParameter("bonus");
		
		boolean isTrue;
		
		isTrue=SalaryDBUtil.insertSalary(basicSalary, etf, epf, otBonus, special);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("slip.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis=request.getRequestDispatcher("salary.jsp");
			dis.forward(request, response);
		}
	}

}
