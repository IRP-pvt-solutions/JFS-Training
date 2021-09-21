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

//@WebServlet("/CustomerLoginServlet")

public class CustomerLoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String action = req.getParameter("name");
		Customer customer = new Customer();
		System.out.println("Control is in Servlet");
		if(action.equals("Login"))
		{
			System.out.println("Control is in login");
			PrintWriter out = res.getWriter();
			// fetch data from login form
			 customer.setUsername(req.getParameter("admin_username"));
			customer.setPassword(req.getParameter("admin_password"));
	
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