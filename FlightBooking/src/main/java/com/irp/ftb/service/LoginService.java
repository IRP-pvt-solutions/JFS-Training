package com.irp.ftb.service;

import java.sql.SQLException;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.util.FtbConnection;

public class LoginService {
	public boolean registerCustomer(Customer customer) throws SQLException {

		FtbConnection connect = new FtbConnection();
		connect.getConnection();
		return true;
	}
}
