package com.irp.ftb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FtbConnection {
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://194.59.164.1:3306/u935837332_jfstraining", "u935837332_root", "Test12345");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
