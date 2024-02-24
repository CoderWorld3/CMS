package com.example.CMS.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Role {
	@Id
	@GeneratedValue
	private int id;
	private String role;
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", role=" + role + "]";
	}
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Role(String role) {
		super();
		this.role = role;
	}

}
