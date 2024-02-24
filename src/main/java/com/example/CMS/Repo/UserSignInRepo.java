package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.UserSignIn;
@Repository
public interface UserSignInRepo extends JpaRepository<UserSignIn, String> {

	UserSignIn getByUserName(String username);

}
