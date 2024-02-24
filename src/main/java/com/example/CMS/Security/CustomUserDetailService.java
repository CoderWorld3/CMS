package com.example.CMS.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.CMS.Model.UserSignIn;
import com.example.CMS.Repo.UserSignInRepo;

@Service
public class CustomUserDetailService implements UserDetailsService {
	@Autowired	
  private UserSignInRepo inRepo;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		UserSignIn signIn = this.inRepo.getByUserName(username);
		if(signIn== null)
			throw new UsernameNotFoundException(username);
		
		return  new CustomUserDetails(signIn);
	}

}
