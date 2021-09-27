package com.irp.ftb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.buf.StringUtils;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.dto.LoginDto;
import com.irp.ftb.service.LoginService;
import com.irp.ftb.util.FtbConnection;

@WebServlet("/CustomerLoginServlet")

public class CustomerLoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
			
	try 
		{
			Customer customer = new Customer();
			customer.setUsername(request.getParameter("email"));
			customer.setPassword(request.getParameter("pswd"));
			
			customer = LoginDto.Userlogin(customer);
			
			if(customer.isValid())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSession", session);
				response.sendRedirect("welcome.jsp");
			}
			else
				response.sendRedirect("usernotfound.jsp");
		}catch(Throwable theException)
	{
			System.out.println(theException);
	}	
}
}