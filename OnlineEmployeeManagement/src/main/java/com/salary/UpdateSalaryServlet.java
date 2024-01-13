package com.salary;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateSalaryServlet")
public class UpdateSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("sid");
		String basicSal=request.getParameter("b_sal");
		String Etf=request.getParameter("Etf");
		String Epf=request.getParameter("Epf");
		String OTbonus=request.getParameter("OT");
		String special=request.getParameter("Sbonus");
		double total=Double.parseDouble(request.getParameter("tot"));
		
		boolean isTrue;
		
		isTrue=SalaryDBUtil.updateSalary(id, basicSal, Etf, Epf, OTbonus, special,total);
		
		if(isTrue==true) {
			List<Salary> salDetails=SalaryDBUtil.getSalaryDetails(id);
			request.setAttribute("salDetails", salDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("slip.jsp");
			dis.forward(request, response);
		}
		
		else {
			List<Salary> salDetails=SalaryDBUtil.getSalaryDetails(id);
			request.setAttribute("salDetails", salDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("updateSalary.jsp");
			dis.forward(request, response);
		}
	}

}
