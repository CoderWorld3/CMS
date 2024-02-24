package com.example.CMS.Controller;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.CMS.Model.Courses;
import com.example.CMS.Model.Role;
import com.example.CMS.Model.UserDetailWithRole;
import com.example.CMS.Model.UserDetails;
import com.example.CMS.Model.UserSignIn;
import com.example.CMS.Repo.CourseRepo;
import com.example.CMS.Repo.RoleRepo;
import com.example.CMS.Repo.UserDetailsWithRoleRepo;
import com.example.CMS.Repo.UserRepo;
import com.example.CMS.Repo.UserSignInRepo;

@SessionAttributes({ "name", "Re_Image", "registationData", "normalluser","teacher" ,"student"})
@RequestMapping("/admin")
@Controller
public class AdminController {
	@Autowired
	private PasswordEncoder encoder;
	@Autowired
	private UserSignInRepo userSignIn;
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private RoleRepo  roleRepo;
	@Autowired
private UserDetailsWithRoleRepo userDetailsWithRoleRepo;
	@Autowired
	private CourseRepo courseRepo;
	

	@PostMapping("/getlistofuser")
	@ResponseBody
	private List<UserDetails> listOfUser( @RequestParam String usertype){
//		System.out.println(userRepo.findByUserType(usertype).toString());
//		System.out.println( usertype);
	 var	details =userRepo.findByUserType(usertype);
//	 System.out.println(details);
		return details;
	}
	@PostMapping("/getlistofuserbyid")
	@ResponseBody
	private Optional<UserDetails> getlistofuserbyid( @RequestParam String usertype){
//		System.out.println(userRepo.findByUserType(usertype).toString());
		String[] usertype1 =usertype.split(" ");
//	 var	details =userRepo.findById(usertype1[0]);
//	 System.out.println( usertype1[0]);
//	 System.out.println(details);
		
		return userRepo.findById(usertype1[0]);
	}
  
	@GetMapping("/roles")
	@ResponseBody
   	 public List<Role> roleList() {
//		System.out.println("done");
		 var data= roleRepo.findAll();
		 return data;
	 }
	@PostMapping("/rolessave")
	@ResponseBody
   	 public String rolesave( @RequestParam String role) {
//		System.out.println( role);
		Role role1 = new Role();
		role1.setRole(role.toLowerCase());
		 roleRepo.saveAndFlush(role1);
//		 System.out.println(role1.toString());
		 return "done";
	 }
	
	 @GetMapping("/getuserDetailWithRole")
	 @ResponseBody
	 public List<UserDetailWithRole> getuserDetailWithRole() {
		 return userDetailsWithRoleRepo.findAll();
	 }
	 @PostMapping("/getuserDetailWithRoleByid")
	 @ResponseBody
	 public Optional<UserDetailWithRole> getuserDetailWithRoleByid(@RequestParam String id) {
		  Optional<UserDetailWithRole> data= userDetailsWithRoleRepo.findById(id);
		  return data;
	 }
	
	@PostMapping("/userDetailWithRole")
	@ResponseBody
	public String saveUserWithRole(@RequestParam String id,@RequestParam String role) {
		String ids[] = id.split(" ");
       UserDetails details =	userRepo.getById(ids[0]);
	UserDetailWithRole userDetailWithRole = new UserDetailWithRole();
	UserSignIn in = new UserSignIn();
	userDetailWithRole.setUserid(ids[0]);
	userDetailWithRole .setEmail(details.getEmail());
	userDetailWithRole.setAge(details.getAge());
	userDetailWithRole.setGender(details.getGender());
	userDetailWithRole.setImg(details.getImg());
	userDetailWithRole.setLastName(details.getLastName());
	userDetailWithRole.setUserName(details.getUserName());
	userDetailWithRole.setRole(role);
	userDetailWithRole.setPassword(encoder.encode(details.getPassword().toString()).toCharArray());
	userDetailWithRole.setPhonenumber(details.getPhonenumber());
	in.setUserName(ids[0]);
	in.setPassword(userDetailWithRole.getPassword().toString());
	in.setRole(role);
	in.setUserName(details.getUserName());
	
		userDetailsWithRoleRepo.saveAndFlush(userDetailWithRole);
		userRepo.deleteById(ids[0]);
		userSignIn.saveAndFlush(in);
		return "done";
		
	}
	@PostMapping("/updateuserDetail")
	@ResponseBody
	public String updateuserDetailWithRole(@ModelAttribute UserDetailWithRole user ) {
		System.out.println(user+"----------------------------------------------");
		String ids = user.getUserid();
       UserDetailWithRole details =	userDetailsWithRoleRepo.getById(ids);
	UserDetailWithRole userDetailWithRole = new UserDetailWithRole();
	userDetailWithRole.setUserid(ids);
	userDetailWithRole .setEmail(user.getEmail());
//	userDetailWithRole.setAge(user.getAge());
//	userDetailWithRole.setGender(user.getGender());
//	userDetailWithRole.setImg(user.getImg());
	userDetailWithRole.setLastName(user.getLastName());
	userDetailWithRole.setUserName(user.getUserName());
//	userDetailWithRole.setRole(user.getEmail());
//	userDetailWithRole.setPassword(encoder.encode(user.getPassword().toString()).toCharArray());
	userDetailWithRole.setPhonenumber(user.getPhonenumber());
	
	
		userDetailsWithRoleRepo.saveAndFlush(userDetailWithRole);
//		userRepo.deleteById(ids[0]);
		return "done";
		
	}
     
	
	@PostMapping("/deleteuserDetailWithRole")
	@ResponseBody
	public String deleteuserDetailWithRole(  @RequestParam String id) {
		userDetailsWithRoleRepo.deleteById(id);
		return "done";
		
	}
	@PostMapping("/addcourse")
	@ResponseBody
	public String addcourse(  @ModelAttribute Courses id) {
		String suffic = "CMS";
		int count = (int) userRepo.count();
		LocalDateTime myObj = LocalDateTime.now();
		id.setCourseId(suffic + count + myObj);
		System.out.println("done your course" +id);
		
		courseRepo.saveAndFlush(id);
		
		return "done";
		
	}
//	@PostMapping("/deletecourse")
//	@ResponseBody
//	public String deletecourse(  @ModelAttribute String id) {
//		
//		return "done";
//		
//	}
	@GetMapping("/getCourseDetails")
	@ResponseBody
	public List<Courses> getCourseDetails( ) {
		
		
		return courseRepo.findAll();
		
	}
	@PostMapping("/deleteCourse")
	@ResponseBody
	public Optional<Courses> deleteCourse( @RequestParam String id ) {
		Optional<Courses> data =courseRepo.findById(id);
		
		return data ;
		
	}
	@PostMapping("/deleteCourseByid")
	@ResponseBody
	public String deleteCourseByid( @RequestParam String courseId ) {
	 courseRepo.deleteById(courseId);
		
		return "done";
		
	}
	@PostMapping("/updateucourseDetail")
	@ResponseBody
	public String updateucourseDetail(@ModelAttribute Courses user ) {
		String ids = user.getCourseId();

		Courses userDetailWithRole = new Courses();
	userDetailWithRole.setCourseId(ids);
	userDetailWithRole .setCourseName(user.getCourseName());
//	userDetailWithRole.setAge(user.getAge());
//	userDetailWithRole.setGender(user.getGender());
//	userDetailWithRole.setImg(user.getImg());
	userDetailWithRole.setCourseDuration(user.getCourseDuration());
//	userDetailWithRole.setUserName(user.getUserName());
//	userDetailWithRole.setRole(user.getEmail());
//	userDetailWithRole.setPassword(encoder.encode(user.getPassword().toString()).toCharArray());
//	userDetailWithRole.setPhonenumber(user.getPhonenumber());
	
	
		courseRepo.saveAndFlush(userDetailWithRole);
//		userRepo.deleteById(ids[0]);
		return "done";
		
	}

	
	

}
