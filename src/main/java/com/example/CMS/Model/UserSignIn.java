package com.example.CMS.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity(name = "UserSignIn")
public class UserSignIn {
	@Id
    private String id;
	private String userName;
	private String password;
	private String role;
	public UserSignIn() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserSignIn(String id, String userName, String password, String role) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.role = role;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	
}
