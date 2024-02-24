package com.example.CMS.Repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.UserDetails;
@Repository
public interface UserRepo  extends JpaRepository<UserDetails, String>{

	 List<UserDetails> findByUserType(String name);
	 UserDetails getById(String id);
}
