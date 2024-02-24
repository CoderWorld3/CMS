package com.example.CMS.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;
@Entity
@Table(indexes = @Index(columnList = "problemName"))
public class ProblemOfBoat {
    @Id
    @GeneratedValue
    private int problemId;
	private String problemName;

	public String getProblemName() {
		return problemName;
	}

	public void setProblemName(String problemName) {
		this.problemName = problemName;
	}

	public ProblemOfBoat(String problemName) {
		super();
		this.problemName = problemName;
	}

	public ProblemOfBoat() {
		super();
		// TODO Auto-generated constructor stub
	}


    

	
}
