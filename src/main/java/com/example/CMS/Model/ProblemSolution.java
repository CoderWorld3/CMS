package com.example.CMS.Model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class ProblemSolution {
	@Id
	private String problemSolutionId;
    @OneToMany(targetEntity=ProblemOfBoat.class,cascade=CascadeType.ALL)  
    @JoinColumn(name="cp_fk", nullable=false,referencedColumnName = "problemSolutionId")
	private List<String> problemSolution;
	public String getProblemSolutionId() {
		return problemSolutionId;
	}
	public void setProblemSolutionId(String problemSolutionId) {
		this.problemSolutionId = problemSolutionId;
	}
	public List<String> getProblemSolution() {
		return problemSolution;
	}
	public void setProblemSolution(List<String> list) {
		this.problemSolution = list;
	}
	public ProblemSolution(String problemSolutionId, List<String> problemSolution) {
		super();
		this.problemSolutionId = problemSolutionId;
		this.problemSolution = problemSolution;
	}
	public ProblemSolution() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ProblemSolution [problemSolutionId=" + problemSolutionId + ", problemSolution=" + problemSolution + "]";
	}


}
	
