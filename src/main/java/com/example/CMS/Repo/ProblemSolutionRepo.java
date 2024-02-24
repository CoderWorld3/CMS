package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.ProblemSolution;

@Repository
public interface ProblemSolutionRepo  extends JpaRepository<ProblemSolution, String>{

	

}
