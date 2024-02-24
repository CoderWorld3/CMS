package com.example.CMS.Model;

import java.util.Arrays;
import java.util.List;

public class UserDetailsTokenData {
	private String ip;
	private String userName;
	private char[] password;
	private String role;
	 private String userId;
	 private List<String> otp;
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public char[] getPassword() {
		return password;
	}
	public void setPassword(char[] password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public List<String> getOtp() {
		return otp;
	}
	public void setOtp(List<String> otp) {
		this.otp = otp;
	}
	public UserDetailsTokenData(String ip, String userName, char[] password, String role, String userId,
			List<String> otp) {
		super();
		this.ip = ip;
		this.userName = userName;
		this.password = password;
		this.role = role;
		this.userId = userId;
		this.otp = otp;
	}
	public UserDetailsTokenData() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserDetailsTokenData [ip=" + ip + ", userName=" + userName + ", password=" + Arrays.toString(password)
				+ ", role=" + role + ", userId=" + userId + ", otp=" + otp + "]";
	}

}
