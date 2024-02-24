 package com.example.CMS.Security;

import java.util.Collection;
import java.util.HashSet;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.CMS.Model.UserSignIn;

public class CustomUserDetails  implements UserDetails{
	private UserSignIn userSignIn;

	public CustomUserDetails(UserSignIn userSignIn) {
		super();
		this.userSignIn = userSignIn;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		HashSet< SimpleGrantedAuthority> set = new HashSet<>();
		set.add( new  SimpleGrantedAuthority(this.userSignIn.getRole()));
		return set;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stubthis
		return  userSignIn.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return userSignIn.getUserName();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
