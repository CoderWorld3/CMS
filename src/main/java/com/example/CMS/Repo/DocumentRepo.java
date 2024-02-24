package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.Document;

@Repository
public interface DocumentRepo extends JpaRepository<Document, String> {

}
