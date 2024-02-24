<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	height: 100vh;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.registration {
	height: 100vh;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 10px;
}

.container {
margin-top:100px;
	max-width: 100vh;
	width: 100%;
	background-color: #fff;
	padding: 25px 30px;
	border-radius: 5px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 30px;
	border-radius: 5px;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.content form .user-details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}

form .user-details .input-box {
	margin-bottom: 15px;
	width: calc(100%/ 2 - 20px);
}

form .input-box span.details {
	display: block;
	font-weight: 500;
	margin-bottom: 5px;
}

.user-details .input-box input {
	height: 45px;
	width: 100%;
	outline: none;
	font-size: 16px;
	border-radius: 5px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

.user-details .input-box input:focus, .user-details .input-box input:valid
	{
	border-color: #9b59b6;
}

form .gender-details .gender-title {
	font-size: 20px;
	font-weight: 500;
}

form .category {
	display: flex;
	width: 80%;
	margin: 14px 0;
	justify-content: space-between;
}

form .category label {
	display: flex;
	align-items: center;
	cursor: pointer;
}

form .category label .dot {
	height: 18px;
	width: 18px;
	border-radius: 50%;
	margin-right: 10px;
	background: #d9d9d9;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

#dot-1:checked ~ .category label .one, #dot-2:checked ~ .category label .two,
	#dot-3:checked ~ .category label .three {
	background: #9b59b6;
	border-color: #d9d9d9;
}

form input[type="radio"] {
	display: none;
}

form .button {
	height: 45px;
	margin: 35px 0
}

select {
	height: 3vh;
	width: 100%;
	background-color: #9e98a0;
}

form .button input {
	height: 100%;
	width: 100%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

form .button input:hover {
	/* transform: scale(0.99); */
	background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}

@media ( max-width : 584px) {
	.container {
		max-width: 100%;
	}
	form .user-details .input-box {
		margin-bottom: 15px;
		width: 100%;
	}
	form .category {
		width: 100%;
	}
	.content form .user-details {
		max-height: 300px;
		overflow-y: scroll;
	}
	.user-details::-webkit-scrollbar {
		width: 5px;
	}
}

@media ( max-width : 459px) {
	.container .content .category {
		flex-direction: column;
	}
}

marquee  a {
	color: red;
	text-decoration: none;
}
</style>


</head>
<body>
	<div></div>


	<div class="registration">

		<div class="container">
			<div class="title">Registration for Teacher</div>
			<div class="content">
				<form action="registerTeacher" method="post">
					<div class="user-details">
						<div class="input-box">
							<span class="details">Full Name</span> <input type="text"
								placeholder="Enter your name"  name="userName"required>
						</div>
						<div class="input-box">
							<span class="details">Last name</span> <input type="text"
								placeholder="Enter your Lastname" name="lastName" required>
						</div>
						<div class="input-box">
							<span class="details">Email</span> <input type="email"
								placeholder="Enter your email" name="email" required>
						</div>
						<div class="input-box">
							<span class="details">Phone Number</span> <input type="tel"
								placeholder="Enter your number" name="phonenumber" required>
						</div>
						<div class="input-box">
							<span class="details">Password</span> <input type="password"
								placeholder="Enter your password" name="password" required>
						</div>
						<div class="input-box">
							<span class="details">Confirm Password</span> <input
								type="password" placeholder="Confirm your password" name="cpassword" 
								required>
						</div>
						<div class="input-box">
							<span class="details">Date OF Birth</span> <input type="text"
								placeholder="Date of birth(dd/mm/yyyy)" id="dob"   value="" name="age" onfocusout="ageCount()" required>
						</div>
						<div class="input-box">
							<span class="details">Program </span> <select name="program"
								id="program">
									      
							</select>
						</div>

					</div>
					<div class="gender-details">
						<input type="radio" name="gender" value="m" id="dot-1">
						 <input
							type="radio"  value="f"name="gender" id="dot-2">
							 <input
							type="radio" name="gender" value="n" id="dot-3"> <span
							class="gender-title">Gender</span>
						<div class="category">
							<label for="dot-1"> <span class="dot one"></span> <span
								class="gender">Male</span>
							</label> <label for="dot-2"> <span class="dot two"></span> <span
								class="gender">Female</span>
							</label> <label for="dot-3"> <span class="dot three"></span> <span
								class="gender">Prefer not to say</span>
							</label>
						</div>
					</div><!-- 
					    <input disabled="disabled" name="teacher" value="teacher"> -->
					<div class="button">
						<input type="submit" value="Register" id="Register">
					</div>
					<marquee>
						<a class=" active fas fa-house-user" href="/"> Home </a>
					</marquee>
				</form>
				<div class="" id="imageUpload">
					<form method="POST" enctype="multipart/form-data"
						id="fileUploadForm">
						<div class="input-box">
							<span class="details">Must Upload A pic first</span> <br /> <input
								type="file" name="data" id="fileSubmit" /><br />
								
						</div>
                  
              

						<div class="button">
							<br /> <input type="submit"  value="Submit"
								id="btnSubmit" />

						</div>


					</form>

				</div>
				<h6 id="response"></h6>
			</div>
		</div>


	</div>


	<script src="/js/registration.js"></script>
	<script type="text/javascript">
	$.ajax({
		type: "GET",
		url: '/getCourse',
	})
	.done(function(res) {
		$.each(res, function(index, value) {
			let select_option = '';
			select_option += "<option value='"+ value.courseName +"'>"+ value.courseName +"</option>"; 
			$('#program').append(select_option);
		});
	})
	.fail(function(err) {
		console.log(err);
	});
	
	
	
	</script>

</body>
</html>