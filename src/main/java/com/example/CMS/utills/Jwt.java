package com.example.CMS.utills;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.example.CMS.Model.NormalUser;
import com.example.CMS.Model.UserDetailsTokenData;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
@Component
public class Jwt implements Serializable {

	/** 
	 *
	 */
	private static final long serialVersionUID = 7008375124389347049L;
	public static final long TOKEN_VALIDITY = 10 * 60 * 60;
	@Value("${secret}")
	private String jwtSecret;

	public String generateJwtToken(NormalUser userDetails) {
		Map<String, Object> claims = new HashMap<>();
		claims.put("UserName", userDetails.getUserName());
		claims.put("ip",userDetails.getEmail());
	


		return Jwts.builder().setClaims(claims).setSubject("     userDetails.getUsername()")
				.setIssuedAt(new Date(System.currentTimeMillis()))
				.setExpiration(new Date(System.currentTimeMillis() + TOKEN_VALIDITY * 1000))
				.signWith(SignatureAlgorithm.HS512, jwtSecret).compact();
	}

	public Boolean validateJwtToken(String token, NormalUser userDetails) {
		String username = getUsernameFromToken(token);
		Claims claims = Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(token).getBody();
		Boolean isTokenExpired = claims.getExpiration().before(new Date());
		return (username.equals("userDetails.getUsername()") && !isTokenExpired);
	}

	public String getUsernameFromToken(String token) {
		final Claims claims = Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(token).getBody();
		return claims.getSubject();
	}

//	public static Claims decodeJWT(String jwt) {
//	    //This line will throw an exception if it is not a signed JWS (as expected)
//	    Claims claims = Jwts.parser()
//	            .setSigningKey()
//	            .parseClaimsJws(jwt).getBody();
//	    return claims;
//	}

}