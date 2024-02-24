package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.NormallUser;
import com.example.CMS.Model.SignUpNormall;

@Repository
public interface NormalUserRepo2 extends JpaRepository<NormallUser, String> {

	NormallUser getByUserName(String string);





	

}
