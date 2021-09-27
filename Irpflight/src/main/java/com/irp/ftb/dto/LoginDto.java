package com.irp.ftb.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.util.FtbConnection;

public class LoginDto {
	
	// For Login
	public static Customer Userlogin(Customer customer) {
	
		String username=customer.getUsername();
		String password= customer.getPassword();

		String sql = "select * from users where email = ? and password = ?";
		
		  // "System.out.println" prints in the console; Normally used to trace the process
	      System.out.println("Your email is " + username);          
	      System.out.println("Your password is " + password);
	      System.out.println("Query: "+sql);
		try {
			
			PreparedStatement pst = FtbConnection.getConnection().prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			System.out.println("entered try block");
			 if(rs.next())
			{
				String name =rs.getString(2);
				System.out.println("Welcome" + name);
				customer.setValid(true);
			}
			 else if (!rs.next()) {
					System.out.println("entered if block");
					System.out.println("Sorry,you are not registered user! Please sign up first");
					customer.setValid(false);
				}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return customer;
	}
}
