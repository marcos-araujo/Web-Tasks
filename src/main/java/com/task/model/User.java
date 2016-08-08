package com.task.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User{
	
	@Id
	@Column(name = "USER")
	private String user;
	@Column(name = "PASSWORD")
	private String password;
	
	public String getUser(){
		return user;
	}
	public void setUser(String user){
		this.user = user;
	}
	
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	
}