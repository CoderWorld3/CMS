package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.NormalUser;
import com.example.CMS.Model.NormallUser;

@Repository
public interface NormalUserRepo extends JpaRepository<NormallUser, String> {

	NormallUser getByUserName(String string);

	void save(NormalUser normalUser);

}
