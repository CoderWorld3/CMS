package com.example.CMS.Model;

public class SignUpNormall {
	 private String userName;
	 private String password;
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
	public SignUpNormall() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "SignUpNormall [userName=" + userName + ", password=" + password + "]";
	}

}
