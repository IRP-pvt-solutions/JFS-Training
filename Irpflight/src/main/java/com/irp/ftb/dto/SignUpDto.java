package com.irp.ftb.dto;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.irp.ftb.bean.Customer;
import com.irp.ftb.util.FtbConnection;

public class SignUpDto {
	public void register() {
		Customer customer = new Customer();
		String userName= customer.getUsername();
		String password= customer.getPassword();
		int result=0;
		System.out.println("this is dto out "+userName);
		
		//String query = "insert into users (email,password) values (userName,password)";
		String query = "INSERT INTO USERS"+
						"(EMAIL,PASSWORD) VALUES"+
						"(?,?);";
		
		try(PreparedStatement preparedStatement = FtbConnection.getConnection().prepareStatement(query)){
			
			preparedStatement.setString(1, userName);
			preparedStatement.setString(2, password);
			result = preparedStatement.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}
}
