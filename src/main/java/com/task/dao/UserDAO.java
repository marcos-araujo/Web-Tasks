package com.task.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.task.jdbc.ConnectionFactory;
import com.task.model.User;

public class UserDAO{
	
	private Connection connection;
	
	public UserDAO(){
		connection = new ConnectionFactory().getConnection();
	}
	
	public boolean isValid(User user){
		String sql = "SELECT USER, PASSWORD FROM USER WHERE USER=? AND PASSWORD=?";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, user.getUser());
			stmt.setString(2, user.getPassword());
			rs = stmt.executeQuery();
			stmt.execute();
			if(rs.next())
				return true;
			else
				return false;
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			try{
				stmt.close();
				rs.close();
				connection.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}