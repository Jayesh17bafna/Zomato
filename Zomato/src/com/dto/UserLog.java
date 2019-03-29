package com.dto;

public class UserLog 
{
	private String username;
	private String pass;
	
	
	public UserLog(String username, String pass) {
		super();
		this.username = username;
		this.pass = pass;
	}


	public UserLog() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
	
}
