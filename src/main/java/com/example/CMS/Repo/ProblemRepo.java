package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.ProblemOfBoat;
import com.example.CMS.Model.ProblemSolution;

@Repository
public interface ProblemRepo  extends JpaRepository<ProblemOfBoat, String>{

	

}
