package com.irp.ftb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.dto.LoginDto;

/**
 * Servlet implementation class CustomerLogin
 */
@WebServlet("/CustomerLogin")
public class CustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLogin() {
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
		String action = request.getParameter("name");
		Customer customer = new Customer();
		System.out.println("Control is in Servlet");
		if(action.equals("Login"))
		{
			System.out.println("Control is in login");
			PrintWriter out = response.getWriter();
			// fetch data from login form
			 customer.setUsername(request.getParameter("admin_username"));
			customer.setPassword(request.getParameter("admin_password"));
	
			LoginDto db = new LoginDto();
			String name = db.Userlogin(customer.getUsername(), customer.getPassword());
	
			if (!name.isEmpty() && name.length() > 0) {
				out.println("You are logged in");
				
			}else {
				out.println("Wrong Creditanls, try again");
			}
		}
	}
}
