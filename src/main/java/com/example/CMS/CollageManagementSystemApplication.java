package com.example.CMS;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CollageManagementSystemApplication 
//implements CommandLineRunner
{


	public static void main(String[] args) {
		SpringApplication.run(CollageManagementSystemApplication.class, args);
	}

//	@Override
//	public void run(String... args) throws Exception {
//		// TODO Auto-generated method stub
//		UserSignIn in = new UserSignIn();
//		in.setId("CMS1User1");
//		in.setPassword(this.bCryptPasswordEncoder.encode("arvin"));
//		in.setUserName("ArvinMishra");
//		in.setRole("admin");
//		this.signInRepo.save(in);
//		
//		
//	}

}
