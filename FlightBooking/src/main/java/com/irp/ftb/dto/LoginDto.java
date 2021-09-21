package com.irp.ftb.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.util.FtbConnection;

public class LoginDto {

	// For Login
	public String Userlogin(String username, String password) {
		Customer customer = new Customer();
		String r = new String();

		try {
			String sql = "select * from login where username = ? and password = ?";
			PreparedStatement pst = FtbConnection.getConnection().prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				r = rs.getString(2);
				/*
				 * customer.setName(rs.getString(2)); customer.setId(rs.getInt(1));
				 * customer.setPassword(rs.getString(4)); customer.setUsername(rs.getString(3));
				 * System.out.println("res" + customer);
				 */
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}
}
