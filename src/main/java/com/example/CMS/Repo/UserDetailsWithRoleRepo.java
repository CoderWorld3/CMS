package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.UserDetailWithRole;

@Repository
public interface UserDetailsWithRoleRepo  extends JpaRepository<UserDetailWithRole, String>{

}
