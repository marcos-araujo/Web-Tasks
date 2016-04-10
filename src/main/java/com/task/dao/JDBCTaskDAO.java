package com.task.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.task.model.Task;

@Repository
public class JDBCTaskDAO{
	
	private final Connection connection;
	
	@Autowired
	public JDBCTaskDAO(DataSource dataSource){
		try{
			this.connection = dataSource.getConnection();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void add(Task task){
		String sql = "INSERT INTO TASK (DESCRIPTION) VALUES (?)";
		PreparedStatement stmt = null;
		try{
			stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, task.getDescription());
			stmt.execute();
		}catch(SQLException e){
			throw new RuntimeException (e);
		}finally{
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public List<Task> list(){
		String sql = "SELECT ID, FINALIZATION_DATE, DESCRIPTION, CLOSED FROM TASK";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			stmt = this.connection.prepareStatement(sql);	
			rs = stmt.executeQuery();
			List<Task> tasks = new ArrayList<Task>();
			while(rs.next()){
				Task task = new Task();
				task.setId(rs.getLong("id"));
				task.setDescription(rs.getString("description"));
				task.setClosed(rs.getBoolean("closed"));
				if(rs.getDate("finalization_date") != null){
					Calendar finalizationDate = Calendar.getInstance();
					finalizationDate.setTime(rs.getDate("finalization_date"));
					task.setFinalizationDate(finalizationDate);
				}
				tasks.add(task);
			}
			return tasks;
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			try{
				stmt.close();
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public void delete(Task task){
		String sql = "DELETE FROM TASK WHERE ID = ?";
		PreparedStatement stmt = null;
		try{
			stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, task.getId());
			stmt.execute();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}	
		}
	}
	
	public Task get(Long id){
		String sql = "SELECT ID, FINALIZATION_DATE, DESCRIPTION, CLOSED FROM TASK WHERE ID = ?";
		ResultSet rs = null;
		PreparedStatement stmt = null;
		try{
			stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, id);
			rs = stmt.executeQuery();
			if(rs.next()){
				Task task = new Task();
				task.setId(rs.getLong("id"));
				task.setDescription(rs.getString("description"));
				task.setClosed(rs.getBoolean("closed"));
				if(rs.getDate("finalization_date") != null){
					Calendar finalizationDate = Calendar.getInstance();
					finalizationDate.setTime(rs.getDate("finalization_date"));
					task.setFinalizationDate(finalizationDate);
				}
				return task;
			}
			return null;
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			try{
				rs.close();
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public void update(Task task){
		String sql = "UPDATE TASK SET DESCRIPTION=?, CLOSED=?, FINALIZATION_DATE=? WHERE ID=?";
		PreparedStatement stmt = null;
		try{
			stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, task.getDescription());
			stmt.setBoolean(2, task.isClosed());
			if(task.getFinalizationDate() != null)
				stmt.setDate(3, new Date(task.getFinalizationDate().getTimeInMillis()));
			else
				stmt.setDate(3, null);
			stmt.setLong(4, task.getId());
			stmt.execute();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public void close(Long id){
		String sql = "UPDATE TASK SET CLOSED=?, FINALIZATION_DATE=? WHERE ID=?";
		Task task = this.get(id);
		PreparedStatement stmt = null;
		try{
			stmt = this.connection.prepareStatement(sql);
			stmt.setBoolean(1, true);
			stmt.setDate(2, new Date(Calendar.getInstance().getTimeInMillis()));
			stmt.setLong(3, task.getId());
			stmt.execute();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally{
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
}