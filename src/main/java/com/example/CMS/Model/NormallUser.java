package com.example.CMS.Model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class NormallUser {
	@Id
	private String userid;
	private String userName;
	private String userEmail;
	private char[] password;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public char[] getPassword() {
		return password;
	}
	public void setPassword(char[] password) {
		this.password = password;
	}
	public NormallUser(String userName, String userEmail, char[] password) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.password = password;
	}
	@Override
	public String toString() {
		return "NormallUser [userName=" + userName + ", userEmail=" + userEmail + ", password="
				+ Arrays.toString(password) + "]";
	}
	public NormallUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
