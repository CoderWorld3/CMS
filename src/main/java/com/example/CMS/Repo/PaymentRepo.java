package com.example.CMS.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CMS.Model.Payment;

@Repository
public interface PaymentRepo  extends JpaRepository<Payment, String>{

}
