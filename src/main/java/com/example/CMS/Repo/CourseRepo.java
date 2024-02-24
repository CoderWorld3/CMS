package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.Courses;

@Repository
public interface CourseRepo extends JpaRepository<Courses, String> {

}
