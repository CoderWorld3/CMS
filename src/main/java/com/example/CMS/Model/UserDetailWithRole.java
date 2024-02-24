package com.example.CMS.Model;

import java.io.Serializable;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class UserDetailWithRole implements Serializable {
	@Id
	private String userid;
	private String userName;
	private String lastName;
    private String email;
	private String phonenumber;
	private char[] password;
	private String img;
	private int age;
	private char gender;
	private String role;
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
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public char[] getPassword() {
		return password;
	}
	public void setPassword(char[] password) {
		this.password = password;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public UserDetailWithRole(String userid, String userName, String lastName, String email, String phonenumber,
			char[] password, String img, int age, char gender, String role) {
		super();
		this.userid = userid;
		this.userName = userName;
		this.lastName = lastName;
		this.email = email;
		this.phonenumber = phonenumber;
		this.password = password;
		this.img = img;
		this.age = age;
		this.gender = gender;
		this.role = role;
	}
	public UserDetailWithRole() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "TeacherDetail [userid=" + userid + ", userName=" + userName + ", lastName=" + lastName + ", email="
				+ email + ", phonenumber=" + phonenumber + ", password=" + Arrays.toString(password) + ", img=" + img
				+ ", age=" + age + ", gender=" + gender + ", role=" + role + "]";
	}
	
}
