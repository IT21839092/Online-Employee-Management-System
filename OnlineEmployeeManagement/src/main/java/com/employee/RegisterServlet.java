package com.employee;

import java.io.IOException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("fname");
		String ugen=request.getParameter("gender");
		String umobile=request.getParameter("mnumber");
		String uemail=request.getParameter("femail");
		int uage=Integer.parseInt(request.getParameter("fage"));
		String qul=request.getParameter("qualifications");
		String other=request.getParameter("other");
		String username=request.getParameter("Uname");
		String password=request.getParameter("pwd2");
		
		boolean isTrue;
		
		isTrue=EmployeeDBUtil.insertEmployee(uname, ugen, umobile, uemail, uage, qul, other, username, password);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("register.jsp");
			dis.forward(request, response);
		}
		
	}

}
