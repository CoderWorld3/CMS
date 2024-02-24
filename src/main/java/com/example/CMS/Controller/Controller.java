package com.example.CMS.Controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionAttributeStore;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.CMS.Model.AdminToTeacher;
import com.example.CMS.Model.Courses;
import com.example.CMS.Model.NormalUser;
import com.example.CMS.Model.NormallUser;
import com.example.CMS.Model.ProblemSolution;
import com.example.CMS.Model.Role;
import com.example.CMS.Model.SignUpNormall;
import com.example.CMS.Model.UserDetailWithRole;
import com.example.CMS.Model.UserDetails;
import com.example.CMS.Model.UserSignIn;
import com.example.CMS.Repo.AdminToTeacherRepo;
import com.example.CMS.Repo.CourseRepo;
import com.example.CMS.Repo.NormalUserRepo;
import com.example.CMS.Repo.NormalUserRepo2;
import com.example.CMS.Repo.ProblemSolutionRepo;
import com.example.CMS.Repo.RoleRepo;
import com.example.CMS.Repo.UserDetailsWithRoleRepo;
import com.example.CMS.Repo.UserRepo;
import com.example.CMS.Repo.UserSignInRepo;
import com.example.CMS.utills.Jwt;
import com.example.CMS.utills.MailConfig;
import com.example.CMS.utills.MailConfigFornormall;
import com.example.CMS.utills.SecureNumberGenerate;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@org.springframework.stereotype.Controller
@SessionAttributes({ "name", "Re_Image", "registationData", "normalluser","teacher" ,"student"})
//@RequestMapping("/student")
public class Controller {

	@Autowired
	private UserSignInRepo userSignIn;

	@Autowired
	private MailConfig mailConfig;
	@Autowired
	private NormalUserRepo normalUserRepo;
	@Autowired
	private NormalUserRepo2  normallUserRepo2;
	@Autowired
	private Jwt jwt;
	@Autowired
	private SecureNumberGenerate secureNumberGenerate;
	private String otp;

	@Autowired
	private ProblemSolutionRepo problemSolutionRepo;
	@Autowired
	private AdminToTeacherRepo adminToTeacherRepo;

	@Autowired
	private CourseRepo courseRepo;
	@Autowired
	private MailConfigFornormall configFornormall;
	@Autowired
	private PasswordEncoder encoder;

	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private RoleRepo  roleRepo;
	@Autowired
private UserDetailsWithRoleRepo userDetailsWithRoleRepo;

	

	@GetMapping("/")
	public String home(Model model) {
		model.getAttribute("name");
		model.addAttribute("courses",courseRepo.findAll());

		return "Home";
	}

	@GetMapping("/error")
	public String error() {
		return "error";
	}
	@ResponseBody
	@CrossOrigin(origins = "*")
	@PostMapping(value = "/signin")
	public ResponseEntity<?> signin(@RequestBody UserSignIn in, Model model, ModelAndView andView) {
		System.out.println(in);
		model.addAttribute("name", in.getUserName());
		// database
//		in database
//	System.out.println(andView.getViewName()+"---------------------------------");

		return ResponseEntity.ok(in);
	}

	@GetMapping(value = "/logout")
	public String logout(@ModelAttribute UserSignIn in,HttpSession httpsession, WebRequest request, SessionAttributeStore store, SessionStatus status) {
		 status.setComplete();
		    store.cleanupAttribute(request, "name");
		// database
//		in database
//	System.out.println(andView.getViewName()+"---------------------------------");

		return "Home";
	}

	

	@GetMapping(value = "/about")

	public String about() {
		return "about";
	}

	@GetMapping("/signUp")
	public String signUp() {
		return "signUp";
	}

	@GetMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("courses",courseRepo.findAll());
		return "Registration";
	}

//___________________________________________SSTUdent Support____________________
	@GetMapping("/SSupport")
	public String SSupport() {
		return "StudentSuport";
	}

	@PostMapping("/sendmessage")
	@ResponseBody
	public Object sendMessage(@RequestBody String data) {
		System.out.println(data);
		return data;
	}
//	--------------------------------------------Registration__________________________________

	@RequestMapping(value = "/registrationImage", method = RequestMethod.POST)
	public ResponseEntity<?> EmailConfirm(@RequestParam("data") MultipartFile pri, Model model,
			HttpSession httpSession) {
		model.addAttribute("Re_Image", pri.getOriginalFilename());
//		System.out.println(pri.getSize());
//		System.out.println(pri.getContentType());
//		System.out.println(pri.getName());
//		System.out.println(pri.getOriginalFilename());
//		byte[] file=pri.getBytes();
//		/Users/arvinmishra/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PowerOfEducation/WEB-INF/uploadsImage
		String path = httpSession.getServletContext().getRealPath("/") + pri.getOriginalFilename();
		System.out.println(path);
		File out = new File(path);
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(out);
			fos.write(pri.getBytes());
			System.out.println("Upload and writing output file ok");
		} catch (FileNotFoundException e) {
			System.out.println("File not found" + e);
		} catch (IOException ioe) {
			System.out.println("Exception while writing file " + ioe);
		} finally {
			// close the streams using close method
			try {
				if (fos != null) {
					fos.close();
				}
			} catch (IOException ioe) {
				System.out.println("Error while closing stream: " + ioe);
			}
		}

		return new ResponseEntity("Successfully uploaded - ", HttpStatus.OK);
	}

	@GetMapping("/getAllUser")
	@ResponseBody
	public List<UserDetails> getAllUser() {
		return userRepo.findAll();

	}

	@PostMapping(path = "/registerUser", consumes = { MediaType.APPLICATION_FORM_URLENCODED_VALUE })

	public String registerUser(@ModelAttribute UserDetails m1, Model model)
			throws AddressException, MessagingException, IOException {
		String suffic = "CMS";
		int count = (int) userRepo.count();
		LocalDateTime myObj = LocalDateTime.now();
		m1.setUserid(suffic + count + myObj);
		m1.setUserType("student");
		
//		System.out.println(teacher);
//		details.setImg((String) model.getAttribute("Re_Image"));
//		userRepo.save(details);
		model.addAttribute("registationData", m1);
		model.addAttribute("student", "student");
		model.addAttribute("name", m1.getUserName() + m1.getLastName());
		System.out.println(m1);
		otp = secureNumberGenerate.uRandom(m1.getUserName());
		mailConfig.sendmail(m1.getEmail().toString(), otp+"");
		System.out.println("-----done");

		return "OtpChecks";

	}
	@PostMapping(path = "/registerTeacher")
	public String registerTeacher(@ModelAttribute UserDetails m1, Model model)
			throws AddressException, MessagingException, IOException {
		String suffic = "CMS";
		int count = (int) userRepo.count();
		LocalDateTime myObj = LocalDateTime.now();
		m1.setUserid(suffic + count + myObj);
		m1.setUserType("teacher");
//		System.out.println(teacher);
//		details.setImg((String) model.getAttribute("Re_Image"));
//		userRepo.save(m1);
		model.addAttribute("registationData", m1);
		model.addAttribute("teacher", "teacher");
		model.addAttribute("name", m1.getUserName() + m1.getLastName());
		System.out.println(m1);
		otp = secureNumberGenerate.uRandom(m1.getUserName());
		mailConfig.sendmail(m1.getEmail().toString(), otp+"");
		System.out.println("-----done");

		return "OtpChecks";

	}

	@PostMapping("/confirmOtp")
	public String sendToPayment(@RequestParam("otp") String otp1, Model model) {
		String teacher = null;
		if (otp1.equals(otp)) {
			teacher = (String) model.getAttribute("teacher");
			if(teacher != null) {
			
			if (teacher.equals("teacher")) {
				model.addAttribute("name", model.getAttribute("name"));
			UserDetails details = 	(UserDetails)model.getAttribute("registationData");
			
				userRepo.saveAndFlush(details);
				return "/";

			}
			}
			System.out.println("-------------------------------------------------------------------- "+teacher);

			model.addAttribute("name", model.getAttribute("name"));

			model.addAttribute("registationData", model.getAttribute("registationData"));

			model.addAttribute("student", model.getAttribute("student"));


			return "fee";

		} else {
			return "OtpChecks";
		}

	}
	

	@PostMapping("/ordercreate")
	@ResponseBody
	public String orderCreate(Model model) throws RazorpayException {
		var client = new RazorpayClient("rzp_test_zMx8FOEf804F7e", "1vATIn3IKF3WpKgRmv2QKQSe");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("amount", 1000 * 100);
		jsonObject.put("currency", "INR");
		jsonObject.put("receipt", "txn_235425");
		Order order = client.orders.create(jsonObject);
		System.out.println(order);
	  

		return order.toString() +  model.getAttribute("registationData");
	}

	@PostMapping("/sexfullyRedirect")
	public String redirectToDashBroad(Model model) {
	
		UserDetails details = 	(UserDetails)model.getAttribute("registationData");
		
		userRepo.saveAndFlush(details);
		
		return "redirect:/";
	}

	@GetMapping("/deshboard")
	public String dashboard(Authentication authentication,Model model, Principal principal) {
		 var u =   authentication.getPrincipal();
	        model.addAttribute("userName",principal.getName() );
	
		model.addAttribute("role",authentication.getDetails());

	

//		if (principal != null) {
			return "DashBoard";
		
//		} else {
//			return "redirect:/";
//		}
		
	

	}

	@GetMapping("/atoa")
	public String Ata() {

		return "AdminPanel";

	}

// Teacher-------------------------------------------
	@GetMapping("/teacherRegistration")
	public String teacherRegistration(Model model ) {
		model.addAttribute("courses",courseRepo.findAll());
		return "RegistrationTeacher";
	}

	@PostMapping("/saveTeacher")
	public String saveTeacher() {
		return "RegistrationTeacher";
	}

	@PostMapping("/adminToTeacher")
	@ResponseBody
	public String adminToTeacher(@ModelAttribute AdminToTeacher adminToTeacher, Principal principal) {
		UserSignIn in = userSignIn.getByUserName(principal.getName());

		if ("admin".equals(in.getRole())) {
			adminToTeacherRepo.saveAndFlush(adminToTeacher);
			return "Done";
		} else
			return " you are not admin";
	}

	@GetMapping("/teacherid")
	@ResponseBody
	public List<Object> listTeacherId(Principal principal) {
		UserSignIn in = userSignIn.getByUserName(principal.getName());

		if ("admin".equals(in.getRole())) {
			// List<Object> li= adminToTeacherRepo.findAllByTeacherId();
			List<Object> li = adminToTeacherRepo.findAllTeacherid();
			return li;
		} else
			return Arrays.asList("You Are not A Admin");
	}

	@PostMapping("/signNormallUser")
	public String signNormallUser(@ModelAttribute NormalUser normalUser, Model model)
			throws AddressException, MessagingException, IOException {
		String suffic = "CMS";
		int count = (int) userRepo.count();
		LocalDateTime myObj = LocalDateTime.now();
		normalUser.setId(suffic + count + myObj);
		model.addAttribute("normalluser", normalUser);
		otp = secureNumberGenerate.uRandom(normalUser.getUserName());
		mailConfig.sendmail(normalUser.getEmail().toString(), 96666666+"");
		return "NormallUserOTpChecker";

	}

	@RequestMapping(value = "/normallusersignin", method = RequestMethod.POST)
	public ResponseEntity<?> createAuthenticationToken(@RequestParam("otp") String id, Model model) throws Exception {
		System.out.println(id);
		System.out.println(otp);
		if (id.equals(otp)) {
			NormalUser normalUser = (NormalUser) model.getAttribute("normalluser");
			this.normalUserRepo.save(normalUser);
			return (ResponseEntity<?>) ResponseEntity.ok(jwt.generateJwtToken(normalUser));

		} else

//		NormalUser normalUseror1=  normalUserRepo.getByUserName("");
//		normalUser.setId("CMS0NormalUser");

//		mailConfig.sendmail(m1.getEmail().toString(), count);

			return (ResponseEntity<?>) ResponseEntity.ok("Sorry Otp not matched");
	}

	@GetMapping("/chat")
	public String chat(Model model) {
		model.addAttribute("name","Arvin");
		return "Chat";
	}

	@PostMapping(value = "/saveProblem", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	@ResponseBody

	public String saveProblem(@RequestParam String problemName, @RequestParam String solutionValueToSave,
			@RequestParam String solutionKeyToSave) {
//		System.out.println(m1);
//		String suffic = "CMS";
//		int count = (int) problemRepo.count();
////		LocalDateTime myObj = LocalDateTime.now();
//		ProblemOfBoat boat = new  ProblemOfBoat();
//		boat.setProblemName(problemName.toLowerCase());
		ProblemSolution problemSolution = new ProblemSolution();
		problemSolution.setProblemSolutionId(problemName.toLowerCase());
		problemSolution.setProblemSolution(Arrays.asList(solutionValueToSave));
		problemSolutionRepo.saveAndFlush(problemSolution);
//		problemRepo.saveAndFlush(boat);

//		boat.setProblemName(problemName.toUpperCase());
//		Map<String,String> m1 = new HashMap<>();
//		m1.put(solutionkeyToSave.toLowerCase(), solutionValueToSave.toLowerCase());
//		boat.setProblemSolution(m1);

//		boat.setProblemSolution(problemSolution);
//		problemRepo.deleteAll();
//		System.out.println(boat);
//			problemRepo.saveAndFlush(boat);
		return "hello";
	}
	
//	___________-------------____________---------_______--------__----_---_--__-_--_-__-_--_-__-_--_--_-_--_---
//	DashBoard
	
	@PostMapping("/normalluseradd")
	
	public String normalluseradd(@ModelAttribute NormallUser normalUser) throws AddressException, MessagingException, IOException {
		NormallUser normallUser1= new NormallUser();
		String suffic = "CMS ";

		int count = (int) normalUserRepo.count();
		LocalDateTime myObj = LocalDateTime.now();
		normallUser1.setPassword(normalUser.getPassword());
		normallUser1.setUserEmail(normalUser.getUserEmail());
		normallUser1.setUserName((suffic+normalUser.getUserName()+count+"").toLowerCase());
		
		
		
		normallUser1.setUserid(suffic + count + myObj);
		try {
			configFornormall.sendmail(normalUser.getUserEmail(), suffic+normalUser.getUserName()+count);
		} catch (MessagingException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		normallUserRepo2.saveAndFlush(normallUser1);
		return "redirect:/";
	}
	
	@PostMapping("/normallUserSignUp")
	 public String normallUserSignUp(@ModelAttribute SignUpNormall normall,Model model) {
		 if(normall != null) {
		NormallUser signUpNormall = normallUserRepo2.getByUserName (normall.getUserName().toString());
		if( signUpNormall != null) {
			System.out.println(normall.getPassword().toString() +" " +String.valueOf( signUpNormall.getPassword()));
			String password =String.valueOf(signUpNormall.getPassword());
			if(   password.equals(normall.getPassword()) ) {
				model.addAttribute("Name",signUpNormall.getUserName());
				return "Chat";
				
			}
			else
				return "redirect:/";

		}
		else
			 return "redirect:/";
		 }
		 
		 else 
			 return "redirect:/";
		 
		
		
	}

	@GetMapping("/getCourse")
	@ResponseBody
	public List<Courses> courseList(){
	 return courseRepo.findAll();
	}
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

	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		StringTrimmerEditor editor = new StringTrimmerEditor(false);
		binder.registerCustomEditor(String.class, "firstName", editor);
		binder.registerCustomEditor(String.class, "middleName", editor);
		binder.registerCustomEditor(String.class, "lastName", editor);
		binder.registerCustomEditor(String.class, "emailName", editor);
		binder.registerCustomEditor(String.class, "phoneNumber", editor);
		binder.registerCustomEditor(String.class, "address", editor);
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		CustomDateEditor customDateEditor = new CustomDateEditor(dateFormat, false);
		binder.registerCustomEditor(Date.class, "dob", customDateEditor);

	}
}
