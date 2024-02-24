package com.example.CMS.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.AdminToTeacher;

@Repository
public interface AdminToTeacherRepo extends JpaRepository<AdminToTeacher, String> {

//	List<Object> findAllTeacherId();
//
//	List<Object> findAllByTeacherId();
  @Query(value="Select teacher_id from admin_to_teacher",nativeQuery = true)
	List<Object> findAllTeacherid();

}
