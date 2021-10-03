package com.irp.ftb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.dto.LoginDto;
import com.irp.ftb.dto.SignUpDto;

/**
 * Servlet implementation class CustomerSignUpServlet
 */
@WebServlet("/CustomerSignUpServlet")
public class CustomerSignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerSignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			Customer customer = new Customer();
			SignUpDto signUpDto = new SignUpDto();
			String email= request.getParameter("email");
			String password = request.getParameter("pswd");
			
			customer.setUsername(email);
			customer.setPassword(password);
			
			signUpDto.register();
			
		}catch(Throwable theException)
		{
			System.out.println(theException);
		}	
	}
}


